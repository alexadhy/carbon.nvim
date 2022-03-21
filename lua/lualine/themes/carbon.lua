local config = require("carbon.config")
local colors = require("carbon.colors").setup(config)
local util = require("carbon.util")

local carbon = {}

carbon.normal = {
  a = { bg = colors.cyan1, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.cyan1 },
  c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
}

carbon.insert = {
  a = { bg = colors.green1, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.green1 },
}

carbon.command = {
  a = { bg = colors.orange, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.orange },
}

carbon.visual = {
  a = { bg = colors.magenta, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.magenta },
}

carbon.replace = {
  a = { bg = colors.red, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.red },
}

carbon.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.purple },
  b = { bg = colors.bg_statusline, fg = colors.fg_gutter, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
}

if vim.o.background == "light" then
  for _, mode in pairs(carbon) do
    for _, section in pairs(mode) do
      if section.bg then
        section.bg = util.getColor(section.bg)
      end
      if section.fg then
        section.fg = util.getColor(section.fg)
      end
    end
  end
end

if vim.g.carbon_lualine_bold then
  for _, mode in pairs(carbon) do
    mode.a.gui = "bold"
  end
end

return carbon
