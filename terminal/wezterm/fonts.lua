local wezterm = require 'wezterm'

local fonts = {}

fonts.size = 10

fonts.fonts = wezterm.font_with_fallback {
  'Monaspace Neon', 'Monaspace Argon'
}

fonts.harfbuzz_features = {
  'calt=1', 'ss01=1', 'ss02=1', 'ss03=1', 'ss04=1', 'ss05=1',
  'ss06=1', 'ss07=1', 'ss08=1', 'ss09=1', 'liga=1'
}

return fonts
