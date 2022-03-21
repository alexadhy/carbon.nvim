local util = require("carbon.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local fishColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      fishColors[k] = v:gsub("^#", "")
    end
  end

  local fish = util.template(
    [[
    # carbon Color Palette
    set -l foreground ${fg}
    set -l selection ${bg_visual}
    set -l comment ${comment}
    set -l red ${red}
    set -l orange ${orange}
    set -l yellow ${yellow}
    set -l green ${green}
    set -l purple ${purple}
    set -l cyan ${cyan}
    set -l pink ${magenta}
    set -l error ${red2}
    set -l green2 ${green2}
    
    # Syntax Highlighting Colors
    set -g fish_color_normal $foreground
    set -g fish_color_command $cyan
    set -g fish_color_keyword $red
    set -g fish_color_quote $yellow
    set -g fish_color_redirection $foreground
    set -g fish_color_end $orange
    set -g fish_color_error $error
    set -g fish_color_param $green2
    set -g fish_color_comment $comment
    set -g fish_color_selection --background=$selection
    set -g fish_color_search_match --background=$selection
    set -g fish_color_operator $purple
    set -g fish_color_escape $cyan
    set -g fish_color_autosuggestion $comment
    
    # Completion Pager Colors
    set -g fish_pager_color_progress $comment
    set -g fish_pager_color_prefix $cyan
    set -g fish_pager_color_completion $foreground
    set -g fish_pager_color_description $comment
    
  ]],
    fishColors
  )

  return fish
end

return M
