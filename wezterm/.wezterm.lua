local wezterm = require("wezterm")

local config = {}

config.color_scheme = "Muse (terminal.sexy)"
config.font = wezterm.font_with_fallback({
  "JetBrainsMonoNL Nerd Font Mono",
  "Menlo",
})
config.font_size = 13.0
config.line_height = 1.3
config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate = 700
config.cursor_blink_ease_in = "Linear"
config.cursor_blink_ease_out = "Linear"
config.cursor_thickness = 5
config.animation_fps = 60

config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.audible_bell = "Disabled"

config.window_padding = {
  left = 50,
  right = 50,
  top = 30,
  bottom = 30,
}

config.window_frame = {
  border_left_width = 1,
  border_right_width = 1,
  border_bottom_height = 1,
  border_top_height = 1,
}

config.window_background_opacity = 1.0
config.macos_window_background_blur = 0
config.scrollback_lines = 10000

config.keys = {
  { key = "d", mods = "CMD", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
  { key = "D", mods = "CMD", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
  { key = "w", mods = "CMD", action = wezterm.action.CloseCurrentPane({ confirm = false }) },
  { key = "[", mods = "CMD", action = wezterm.action.ActivatePaneDirection("Left") },
  { key = "]", mods = "CMD", action = wezterm.action.ActivatePaneDirection("Right") },
  { key = "UpArrow", mods = "CMD", action = wezterm.action.ActivatePaneDirection("Up") },
  { key = "DownArrow", mods = "CMD", action = wezterm.action.ActivatePaneDirection("Down") },
}

return config
