-- ============================================================================
-- DEFAULTS BEGIN · windowrules · apps/telegram.lua
-- Loaded from hyprland.lua before your own files, so your files override it.
-- ============================================================================

-- Prevent Telegram from stealing focus on new messages.
o.window("org.telegram.desktop", { focus_on_activate = false })
