-- ============================================================================
-- DEFAULTS BEGIN · windowrules · apps/bitwarden.lua
-- Loaded from hyprland.lua before your own files, so your files override it.
-- ============================================================================

o.window("^([bB]itwarden)$", { no_screen_share = true, tag = "+floating-window" })

-- The extension's popout asks for the width set in its preferences and a height of its own,
-- so float it without the shared 875x600. The class varies by browser, profile and popup path.
o.window(".*nngceckbapebfimnlniiiahkandclblb.*", {
  no_screen_share = true,
  float = true,
  center = true,
})
