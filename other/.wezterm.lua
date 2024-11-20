-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'AdventureTime'

config.keys = {
  {
    key = 'd',
    mods = 'CTRL',
    action = wezterm.action.SendKey {
      key = 'Backspace',
    },
  },
  {
    key = 'Tab',
    action = wezterm.action.SendKey {
      key = 'Enter',
    },
  },
  {
    key = '§',
    action = wezterm.action.SendKey {
      key = 'Tab',
    },
  },
}

config.font_size = 14.5

-- and finally, return the configuration to wezterm
return config










