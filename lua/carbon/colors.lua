local util = require("carbon.util")

local M = {}

---@param config Config
---@return ColorScheme
function M.setup(config)
  config = config or require("carbon.config")

  -- Color Palette
  ---@class ColorScheme
  local colors = {}

  colors = {
    none = "NONE",
    bg_dark = util.darken("#172030", 0.8),
    bg = "#172030",
    bg_highlight = "#1E2A3E",
    terminal_black = "#465063",
    fg = "#C9CCCD",
    fg1 = "#CDD3D3",
    fg_dark = "#B9BCC2",
    fg_gutter = util.brighten("#465063", 0.1),
    dark3 = "#465063",
    comment = "#5D6976",
    dark5 = util.brighten("#5D6976", 0.1),
    blue0 = "#43698D",
    blue = "#4EADE5",
    cyan = "#6FAFBD",
    cyan1 = "#73A7A7",
    cyan2 = "#769AA5",
    cyan3 = "#02858E",
    magenta = "#b87ea2",
    purple0 = "#716994",
    purple = "#9876AA",
    purple1 = "#B5B6E3",
    orange = "#FFAE8F",
    yellow = "#F2C4B3",
    yellow1 = "#F9B5AC",
    green = "#a5c25c",
    green1 = "#afbf7e",
    green2 = "#d0d6b5",
    red = "#D86E89",
    red1 = "#DB7090",
    red2 = "#FF4262",
    git = { change = "#43698d", add = "#57A464", delete = "#FF4262", conflict = "#ffae8f" },
    gitSigns = { add = "#082F3B", change = "#45302B", delete = "#4B2234" },
  }

  util.bg = colors.bg
  util.day_brightness = config.dayBrightness

  colors.diff = {
    add = util.darken(colors.green2, 0.15),
    delete = util.darken(colors.red1, 0.15),
    change = util.darken(colors.blue0, 0.15),
    text = colors.blue,
  }

  colors.gitSigns = {
    add = colors.gitSigns.add,
    change = colors.gitSigns.change,
    delete = colors.gitSigns.delete,
  }

  colors.git.ignore = colors.dark3
  colors.black = util.darken(colors.bg, 0.9)
  colors.border_highlight = colors.yellow
  colors.border = colors.black

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.bg_dark
  colors.bg_statusline = colors.bg_dark

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = (config.transparentSidebar and colors.none) or config.darkSidebar and colors.bg_dark or colors.bg
  colors.bg_float = config.darkFloat and colors.bg_dark or colors.bg

  colors.bg_visual = util.darken(colors.blue0, 0.8)
  colors.bg_search = colors.gitSigns.add
  colors.fg_sidebar = colors.fg_dark

  colors.error = colors.red2
  colors.warning = colors.yellow
  colors.info = colors.blue0
  colors.hint = colors.cyan1

  util.color_overrides(colors, config)

  return colors
end

return M
