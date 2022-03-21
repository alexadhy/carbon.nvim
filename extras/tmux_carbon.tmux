#!/usr/bin/env bash

# carbon colors for Tmux

set -g mode-style "fg=#4EADE5,bg=#546076"

set -g message-style "fg=#4EADE5,bg=#546076"
set -g message-command-style "fg=#4EADE5,bg=#546076"

set -g pane-border-style "fg=#546076"
set -g pane-active-border-style "fg=#4EADE5"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#4EADE5,bg=#020305"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#121A26,bg=#4EADE5,bold] #S #[fg=#4EADE5,bg=#020305,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#020305,bg=#020305,nobold,nounderscore,noitalics]#[fg=#4EADE5,bg=#020305] #{prefix_highlight} #[fg=#546076,bg=#020305,nobold,nounderscore,noitalics]#[fg=#4EADE5,bg=#546076] %Y-%m-%d  %I:%M %p #[fg=#4EADE5,bg=#546076,nobold,nounderscore,noitalics]#[fg=#121A26,bg=#4EADE5,bold] #h "

setw -g window-status-activity-style "underscore,fg=#B9BCC2,bg=#020305"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#B9BCC2,bg=#020305"
setw -g window-status-format "#[fg=#020305,bg=#020305,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#020305,bg=#020305,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#020305,bg=#546076,nobold,nounderscore,noitalics]#[fg=#4EADE5,bg=#546076,bold] #I  #W #F #[fg=#546076,bg=#020305,nobold,nounderscore,noitalics]"
  