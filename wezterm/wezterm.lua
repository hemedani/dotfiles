local wezterm = require("wezterm")

return {
  font = wezterm.font_with_fallback({
    "Cascadia Code Light",
    "Vazir Code Hack",
    "MesloLGS NF",
  }),
  font_size = 15,

  -- ﻦﺗ ﯽﺑﻮﺧ ﻡﻼ﻿ﺳ

  -- Bidi support
  bidi_enabled = true,
  bidi_direction = "AutoLeftToRight",

  -- color_scheme = "Batman",
  line_height = 1.0,
  harfbuzz_features = { "ss13" },

  -- some custom styled
  allow_square_glyphs_to_overflow_width = "Always",
  color_scheme = "Gruvbox Dark Hard",
  color_schemes = {
    ["Gruvbox Dark Hard"] = {
      -- The default text color
      foreground = "#ebdbb2",
      -- The default background color
      background = "#1d2021",
      -- Overrides the cell background color when the current cell is occupied by the
      -- cursor and the cursor style is set to Block
      cursor_bg = "#ebdbb2",
      -- Overrides the text color when the current cell is occupied by the cursor
      cursor_fg = "#333333",
      -- Specifies the border color of the cursor when the cursor style is set to Block,
      -- of the color of the vertical or horizontal bar when the cursor style is set to
      -- Bar or Underline.
      cursor_border = "#ebdbb2",
      -- the foreground color of selected text
      selection_fg = "#333333",
      -- the background color of selected text
      selection_bg = "#ebdbb2",
      -- The color of the scrollbar "thumb"; the portion that represents the current viewport
      scrollbar_thumb = "#333333",
      -- The color of the split lines between panes
      split = "#333333",
      ansi = {
        "#282828",
        "#cc241d",
        "#98971a",
        "#d79921",
        "#458588",
        "#b16286",
        "#689d6a",
        "#a89984",
      },
      brights = {
        "#928374",
        "#fb4934",
        "#b8bb26",
        "#fabd2f",
        "#83a598",
        "#d3769b",
        "#8ec07c",
        "#ebdbb2",
      },
    },
  },

  native_macos_fullscreen_mode = true,

  initial_cols = 150,
  initial_rows = 50,

  keys = {
    -- This will create a new split and run your default program inside it
    {
      key = "/",
      mods = "CMD",
      action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }),
    },
    { key = "'", mods = "CMD", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
    { key = "z", mods = "CMD", action = "TogglePaneZoomState" },
    { key = "x", mods = "CMD", action = wezterm.action({ CloseCurrentPane = { confirm = true } }) },

    -- Pane Sections
    -- Pane Navigates
    { key = "h", mods = "CMD|CTRL", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
    { key = "l", mods = "CMD|CTRL", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
    { key = "k", mods = "CMD|CTRL", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
    { key = "j", mods = "CMD|CTRL", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
    -- Pane Cycles
    { key = "[", mods = "CMD", action = wezterm.action({ ActivatePaneDirection = "Next" }) },
    { key = "]", mods = "CMD", action = wezterm.action({ ActivatePaneDirection = "Prev" }) },
    -- Pane Resize
    { key = "H", mods = "CMD|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Left", 2 } }) },
    { key = "J", mods = "CMD|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Down", 2 } }) },
    { key = "K", mods = "CMD|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Up", 2 } }) },
    { key = "L", mods = "CMD|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Right", 2 } }) },

    -- TAB section
    { key = ",", mods = "CMD", action = wezterm.action({ ActivateTabRelativeNoWrap = 1 }) },
    { key = "m", mods = "CMD", action = wezterm.action({ ActivateTabRelativeNoWrap = -1 }) },

    -- search for the string "hash" matching regardless of case
    { key = "F", mods = "CMD|SHIFT", action = wezterm.action({ Search = { CaseInSensitiveString = "hash" } }) },

    { key = "T", mods = "CMD|SHIFT", action = "ShowTabNavigator" },

    { key = "L", mods = "CMD|SHIFT", action = "ShowLauncher" },

    { key = "f", mods = "CMD|CTRL", action = "ToggleFullScreen" },

    { key = "N", mods = "CMD|SHIFT", action = "SpawnWindow" },

    { key = " ", mods = "CMD|SHIFT", action = "QuickSelect" },
  },
}
