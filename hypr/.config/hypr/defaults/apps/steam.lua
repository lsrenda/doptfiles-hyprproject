-- ============================================================================
-- DEFAULTS BEGIN · windowrules · apps/steam.lua
-- Loaded from hyprland.lua before your own files, so your files override it.
-- ============================================================================

o.window("steam", { float = true, idle_inhibit = "fullscreen" })
o.window({ class = "steam", title = "Steam" }, { center = true, size = { 1100, 700 } })
o.window({ class = "steam", title = "Friends List" }, { size = { 460, 800 } })
