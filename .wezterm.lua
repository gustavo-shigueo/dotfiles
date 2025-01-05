local wezterm = require 'wezterm'

local config = wezterm.config_builder()

wezterm.on("gui-startup", function(cmd)
    local _, _, window = wezterm.mux.spawn_window(cmd or {})
    window:gui_window():maximize()
end)

config.color_scheme = 'Catppuccin Mocha'

config.leader = { key = ' ', mods = 'CTRL', timeout_milisseconds = 5000 }
config.keys = {
  {
    key = '|',
    mods = 'SHIFT|ALT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = '_',
    mods = 'SHIFT|ALT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'x',
    mods = 'SHIFT|ALT',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
  {
    key = 'k',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Up'
  },
  {
    key = 'l',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Right'
  },
  {
    key = 'j',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Down'
  },
  {
    key = 'h',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Left'
  },
  {
    key = 't',
    mods = 'LEADER|CTRL',
    action = wezterm.action.SpawnTab 'CurrentPaneDomain'
  },
  {
    key = 'Tab',
    mods = 'CTRL',
    action = wezterm.action.ActivateTabRelative(1)
  },
  {
    key = 'Tab',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivateTabRelative(-1)
  },
  {
    key = 'w',
    mods = 'LEADER|CTRL',
    action = wezterm.action.CloseCurrentTab { confirm = false }
  },
  {
    key = 'H',
    mods = 'SHIFT|ALT',
    action = wezterm.action.AdjustPaneSize { 'Left', 5 },
  },
  {
    key = 'J',
    mods = 'SHIFT|ALT',
    action = wezterm.action.AdjustPaneSize { 'Down', 5 },
  },
  { key = 'K', mods = 'SHIFT|ALT', action = wezterm.action.AdjustPaneSize { 'Up', 5 } },
  {
    key = 'L',
    mods = 'SHIFT|ALT',
    action = wezterm.action.AdjustPaneSize { 'Right', 5 },
  },
}

return config
