-- ============================================================================
-- DEFAULTS BEGIN · windowrules · apps.lua
-- Loaded from hyprland.lua before your own files, so your files override it.
-- ============================================================================

-- App-specific tweaks.
local paths = require("hypr.defaults.paths")
local require_all = require("hypr.defaults.require_all")

require_all.files(paths.defaults_dir .. "/apps", "hypr.defaults.apps")
