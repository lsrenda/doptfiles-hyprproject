-- ============================================================================
-- DEFAULTS BEGIN · windowrules · apps/localsend.lua
-- Loaded from hyprland.lua before your own files, so your files override it.
-- ============================================================================

-- Float LocalSend and fzf file picker.
local localsend = "(org\\.localsend\\.)?localsend(_app)?"
o.window("Share", { float = true, center = true })
o.window(localsend, { float = true, center = true, size = { 1100, 700 } })
o.transparent_window(localsend)
