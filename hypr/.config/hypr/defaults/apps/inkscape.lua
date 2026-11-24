-- ============================================================================
-- DEFAULTS BEGIN · windowrules · apps/inkscape.lua
-- Loaded from hyprland.lua before your own files, so your files override it.
-- ============================================================================

-- Inkscape draws its file choosers itself rather than through the portal, so the portal rule never sees them.
o.window({
  class = "^org\\.inkscape\\.Inkscape$",
  title = "^Select file to (import|open|save to|save a copy to)$",
}, { tag = "+floating-window" })
