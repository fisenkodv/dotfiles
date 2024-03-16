local wezterm = require("wezterm")
local appearance = require("cfg_appearance")
local keys = require("cfg_keys")
local mouse = require("cfg_mouse")

local cfg = wezterm.config_builder()

appearance.setup(cfg)
keys.setup(cfg)
mouse.setup(cfg)

return cfg
