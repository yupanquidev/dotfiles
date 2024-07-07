local wezterm = require 'wezterm'
local fonts = require 'fonts'

local config = {}

-- WSL
config.default_domain = 'WSL:Debian'

-- Font
config.font = fonts.fonts
config.font_size = fonts.size
config.harfbuzz_features = fonts.harfbuzz_features

return {
  default_prog = {"wsl.exe", "-d", "Debian", "--cd", "~"},
  enable_tab_bar = false,
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = false,
  tab_bar_at_bottom = true,
  tab_max_width = 20,
  window_decorations = "NONE",
  cursor_blink_ease_in = "Linear",
  cursor_blink_ease_out = "Linear",
  cursor_thickness = 1.8,
  force_reverse_video_cursor = true,
  font_size = 10.0,
	colors = {
		foreground = "#dcd7ba",
		background = "#1f1f28",

		cursor_bg = "#c8c093",
		cursor_fg = "#c8c093",
		cursor_border = "#c8c093",

		selection_fg = "#c8c093",
		selection_bg = "#2d4f67",

		scrollbar_thumb = "#16161d",
		split = "#16161d",

		ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" },
		brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" },
		indexed = { [16] = "#ffa066", [17] = "#ff5d62" },
	},

}

return config
