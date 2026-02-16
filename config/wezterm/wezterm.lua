-- ============================================================
--  WezTerm Configuration (Linux)
--  Location: ~/.wezterm.lua
-- ============================================================

local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local mux = wezterm.mux

-- --- Shell ---
-- Uses your default shell ($SHELL), uncomment to override:
-- config.default_prog = { '/usr/bin/zsh' }

-- --- Appearance ---
config.color_scheme = 'Catppuccin Mocha'
config.window_background_opacity = 0.95
config.window_decorations = 'RESIZE'
config.window_close_confirmation = 'NeverPrompt'

config.window_padding = {
  left = 10,
  right = 10,
  top = 10,
  bottom = 10,
}

-- --- Font ---
config.font = wezterm.font('Monofur Nerd Font', { weight = 'Regular' })
config.font_size = 14.0

-- --- Tab bar ---
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

-- --- Cursor ---
config.default_cursor_style = 'BlinkingBar'
config.cursor_blink_rate = 500

-- --- Scrollback ---
config.scrollback_lines = 10000

-- --- Wayland / X11 ---
-- Uncomment if you're on Wayland and having issues:
-- config.enable_wayland = false

-- --- Key bindings ---
config.keys = {
  -- Split panes
  { key = 'd', mods = 'CTRL|SHIFT', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = 'e', mods = 'CTRL|SHIFT', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },

  -- Navigate panes (Alt + hjkl)
  { key = 'h', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Left' },
  { key = 'l', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Right' },
  { key = 'k', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Up' },
  { key = 'j', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Down' },

  -- Resize panes (Alt + Shift + hjkl)
  { key = 'H', mods = 'ALT|SHIFT', action = wezterm.action.AdjustPaneSize { 'Left', 5 } },
  { key = 'L', mods = 'ALT|SHIFT', action = wezterm.action.AdjustPaneSize { 'Right', 5 } },
  { key = 'K', mods = 'ALT|SHIFT', action = wezterm.action.AdjustPaneSize { 'Up', 5 } },
  { key = 'J', mods = 'ALT|SHIFT', action = wezterm.action.AdjustPaneSize { 'Down', 5 } },

  -- Close pane
  { key = 'w', mods = 'CTRL|SHIFT', action = wezterm.action.CloseCurrentPane { confirm = false } },

  -- Font size
  { key = '=', mods = 'CTRL', action = wezterm.action.IncreaseFontSize },
  { key = '-', mods = 'CTRL', action = wezterm.action.DecreaseFontSize },
  { key = '0', mods = 'CTRL', action = wezterm.action.ResetFontSize },

  -- Tabs
  { key = 't', mods = 'CTRL|SHIFT', action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
  { key = '1', mods = 'ALT', action = wezterm.action.ActivateTab(0) },
  { key = '2', mods = 'ALT', action = wezterm.action.ActivateTab(1) },
  { key = '3', mods = 'ALT', action = wezterm.action.ActivateTab(2) },
  { key = '4', mods = 'ALT', action = wezterm.action.ActivateTab(3) },
  { key = '5', mods = 'ALT', action = wezterm.action.ActivateTab(4) },

  -- Scroll
  { key = 'u', mods = 'CTRL|SHIFT', action = wezterm.action.ScrollByPage(-0.5) },
  { key = 'd', mods = 'CTRL|SHIFT', action = wezterm.action.ScrollByPage(0.5) },

  -- Command palette
  { key = 'p', mods = 'CTRL|SHIFT', action = wezterm.action.ActivateCommandPalette },
}

-- --- Mouse ---
config.mouse_bindings = {
  -- Right-click paste
  {
    event = { Down = { streak = 1, button = 'Right' } },
    mods = 'NONE',
    action = wezterm.action.PasteFrom 'Clipboard',
  },
}

-- --- Startup layout (optional) ---
-- Uncomment to auto-split on launch
-- wezterm.on('gui-startup', function(cmd)
--   local tab, pane, window = mux.spawn_window(cmd or {})
--   local right_pane = pane:split {
--     direction = 'Right',
--     size = 0.35,
--   }
-- end)

return config
