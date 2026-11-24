-- ============================================================================
-- DEFAULTS BEGIN · bindings · bindings.lua
-- Loaded from hyprland.lua before your own files, so your files override it.
-- ============================================================================

local paths = require("hypr.defaults.paths")
local require_all = require("hypr.defaults.require_all")

require_all.files(paths.defaults_dir .. "/bindings", "hypr.defaults.bindings")
