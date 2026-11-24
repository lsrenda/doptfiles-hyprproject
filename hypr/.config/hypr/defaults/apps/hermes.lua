-- ============================================================================
-- DEFAULTS BEGIN · windowrules · apps/hermes.lua
-- Loaded from hyprland.lua before your own files, so your files override it.
-- ============================================================================

-- Hermes Desktop's frameless HUD manages its own geometry.
o.window({ class = "^Hermes$", title = "^Hermes HUD$" }, {
  float = true,
  border_size = 0,
})
