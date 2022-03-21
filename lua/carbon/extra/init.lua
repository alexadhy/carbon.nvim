package.path = "./lua/?/init.lua;./lua/?.lua"

local config = require("carbon.config")

local function write(str, fileName)
  print("[write] extra/" .. fileName)
  local file = io.open("extras/" .. fileName, "w")
  file:write(str)
  file:close()
end

-- map of plugin name to plugin extension
local extras = {
  kitty = "conf",
  fish = "fish",
  tmux = "tmux",
}

for extra, ext in pairs(extras) do
  local plugin = require("carbon.extra." .. extra)
  config = config or require("carbon.config")
  config.transform_colors = true
  local colors = require("carbon.colors").setup(config)
  local fname = extra .. "_carbon." .. ext
  colors["_upstream_url"] = "https://github.com/alexadhy/carbon.nvim/raw/main/extras/" .. fname
  write(plugin.generate(colors), fname)
end
