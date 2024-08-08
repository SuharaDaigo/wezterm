-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.automatically_reload_config = false
wezterm.on('window-config-reloaded', function(window, pane)
  wezterm.log_info 'the config was reloaded for this window!'
end)
-- update
config.check_for_updates = true
config.check_for_updates_interval_seconds = 86400

-- bell
config.audible_bell = "Disabled"

-- scroll backline
config.scrollback_lines = 3500

-- exit
config.exit_behavior = 'CloseOnCleanExit'

config.window_background_opacity = 0.7

--font
config.font = wezterm.font('Cica', { weight = 'Bold', stretch = 'Normal', style = 'Normal' })
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
config.text_background_opacity = 0.95
config.font_size = 16
config.cell_width = 1.0
config.line_height = 1.0
config.use_cap_height_to_scale_fallback_fonts = true

-- This increases color saturation by 50%
config.foreground_text_hsb = {
 hue = 1.0,
 saturation = 1.0,
 brightness = 1.2,
}



-- For example, changing the color scheme:
config.color_scheme = 'iceberg'
config.char_select_bg_color = "#282A36"
config.char_select_fg_color = "#F8F8F2"

-- and finally, return the configuration to wezterm
return config
