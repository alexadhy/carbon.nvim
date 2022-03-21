    # carbon Color Palette
    set -l foreground C9CCCD
    set -l selection 365371
    set -l comment 5D6976
    set -l red D86E89
    set -l orange FFAE8F
    set -l yellow F2C4B3
    set -l green a5c25c
    set -l purple 9876AA
    set -l cyan 6FAFBD
    set -l pink b87ea2
    set -l error FF4262
    set -l green2 d0d6b5
    
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
    
  