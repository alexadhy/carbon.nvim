local util = require("carbon.util")
local theme = require("carbon.theme")

local M = {}

function M.colorscheme()
  util.load(theme.setup())
end

return M
