-- ============================================================================
-- DEFAULTS BEGIN · bindings · dictation-backend.lua
-- Loaded from hyprland.lua before your own files, so your files override it.
-- ============================================================================

-- Backends may supply their own desktop integration without editing the
-- user's Hyprland config. Recording bindings remain owned by Omarchy.
local paths = require("hypr.defaults.paths")
local pipe = io.popen("omarchy-default-dictation 2>/dev/null", "r")
if not pipe then
  return
end

local backend = pipe:read("*l")
pipe:close()

if not backend or not backend:match("^[%w%-]+$") or o.cmd_missing("omarchy-dictation-" .. backend) then
  return
end

local integration = paths.config_home .. "/" .. backend .. "/shortcuts.lua"
local file = io.open(integration, "r")
if file then
  file:close()
  local ok, error = pcall(dofile, integration)
  if not ok then
    print("Could not load dictation backend " .. backend .. ": " .. tostring(error))
  end
end
