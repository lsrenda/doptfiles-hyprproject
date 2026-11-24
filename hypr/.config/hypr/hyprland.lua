-- Learn how to configure Hyprland: https://wiki.hypr.land/Configuring/Start/
--
-- ~/.config/hypr
--   defaults/        the stock config, one file per module (leave as is, override below)
--   hyprland.lua     this file: loads the defaults first, then your files
--   monitors.lua  input.lua  bindings.lua  looknfeel.lua  autostart.lua  scratchpad.lua
--                    your overrides, loaded after the defaults so they win

-- =============================================================================
-- DEFAULTS BEGIN
-- Everything in this block loads from ~/.config/hypr/defaults. The order is the
-- one the defaults depend on, so keep it. Categories are only labels.
-- =============================================================================

dofile(os.getenv("HOME") .. "/.config/hypr/defaults/bootstrap.lua")

-- Set to false to skip every default binding (your own bindings.lua still loads).
local default_bindings = true
-- To skip only the bindings for preinstalled apps and web apps, keeping the core
-- window-manager ones, uncomment this:
-- _G.omarchy_preinstalled_bindings = false

-- helpers
require("hypr.defaults.helpers")
local require_optional = require("hypr.defaults.require_optional")

-- autostart
require("hypr.defaults.autostart")

-- monitors
require("hypr.defaults.monitor-workspaces")

-- bindings
if default_bindings then
  require("hypr.defaults.bindings.media")
  require("hypr.defaults.bindings.clipboard")
  require("hypr.defaults.bindings.input-method")
  require("hypr.defaults.bindings.jis")
  require("hypr.defaults.bindings.tiling")
  require("hypr.defaults.bindings.utilities")
  require("hypr.defaults.bindings.dictation")
  require_optional.module("hypr.defaults.bindings.applications")
end

-- envs
require("hypr.defaults.envs")

-- looknfeel
require("hypr.defaults.looknfeel")

-- scratchpad
require("hypr.defaults.qconsole")

-- input
require("hypr.defaults.input")

-- windowrules
require("hypr.defaults.windows")
require("hypr.defaults.pop")

-- bindings: dictation backend hook
require("hypr.defaults.dictation-backend")

-- current theme overrides (generated file, optional)
require_optional.module("omarchy.current.theme.hyprland")

-- =============================================================================
-- DEFAULTS END  ·  YOUR OVERRIDES BEGIN
-- Loaded after the defaults, so anything you set here wins.
-- =============================================================================

require("hypr.monitors")
require("hypr.input")
require("hypr.bindings")
require("hypr.looknfeel")
require("hypr.autostart")
require("hypr.scratchpad")

-- Toggle config flags dynamically.
require("hypr.defaults.toggles")

-- Add any other personal Hyprland configuration below.
-- o.window("qemu", { workspace = "5" })
