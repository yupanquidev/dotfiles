local wezterm = require 'wezterm'
local fonts = require 'fonts'

local config = {}

-- WSL
config.default_domain = 'WSL:Debian'

-- Font
config.font = fonts.fonts
config.font_size = fonts.size
config.harfbuzz_features = fonts.harfbuzz_features

-- Color
config.colors = colors.colors

-- Cursor
config.default_cursor_style = 'BlinkingBar'

config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true
config.tab_max_width = 20
config.cursor_thickness = 1.8
config.force_reverse_video_cursor = true

return config
