-- ============================================================================
-- DEFAULTS BEGIN · windowrules · apps/1password.lua
-- Loaded from hyprland.lua before your own files, so your files override it.
-- ============================================================================

-- 1Password 8.12 renamed its app id from "1Password" to the reverse-DNS form,
-- so match both to keep older installs floating too.
o.window("^(1[pP]assword|com\\.onepassword\\.OnePassword)$", { no_screen_share = true, tag = "+floating-window" })
