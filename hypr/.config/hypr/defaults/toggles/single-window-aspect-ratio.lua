-- ============================================================================
-- DEFAULTS BEGIN · toggles · toggles/single-window-aspect-ratio.lua
-- Loaded from hyprland.lua before your own files, so your files override it.
-- ============================================================================

-- Avoid overly wide single-window layouts on wide screens.
hl.config({
  layout = {
    single_window_aspect_ratio = { 1, 1 },
  },
})
