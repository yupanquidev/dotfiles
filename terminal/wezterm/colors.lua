local wezterm = require 'wezterm'

local colors = {}

colors.colors = {
  foreground = '#C3D0E8',
  background = '#23272E',
  cursor_bg = '#E5EEFF',
  cursor_fg = '#E5EEFF',
  cursor_border = '#CBD4E5',
  selection_fg = '#535B69',
  selection_bg = '#20242a',
  -- scrollbar_thumb = '#141920',
  split = '#526B90',

  ansi = {
    '#111214',
    '#FF6464',
    '#50FA7B',
    '#FFEC52',
    '#A167FF',
    '#FF62BC',
    '#007c7f',
    '#a1a3a2'
  },
  brights = {
    '#777F8D',
    '#FF5555',
    '#69FF94',
    '#FFFF4E',
    '#5A7EFF',
    '#bb0ea6',
    '#00f7f7',
    '#ffffff'
  },

  indexed = { [136] = '#af8700' },
  compose_cursor = '#ff7900',
  copy_mode_active_highlight_bg = { Color = '#000000' },
  copy_mode_active_highlight_fg = { AnsiColor = 'Black' },
  copy_mode_inactive_highlight_bg = { Color = '#73D393' },
  copy_mode_inactive_highlight_fg = { AnsiColor = 'White' },
  quick_select_label_bg = { Color = 'peru' },
  quick_select_label_fg = { Color = '#ffffff' },
  quick_select_match_bg = { AnsiColor = 'Navy' },
  quick_select_match_fg = { Color = '#ffffff' }
}

return colors
