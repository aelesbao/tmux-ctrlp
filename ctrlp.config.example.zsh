# Example config file for Tmux CtrlP
# Copy it to ~/.config/tmux or ~/.tmux

# Defines project paths to be included in the search list as is
projects=(
  ~/.config/nvim
  ~/external/single/project
)

# Defines global workspaces with git repositories to be included
# in the project paths
workspaces=(
  ~/dotfiles
  ~/code/work
  ~/code/freelance
)

# Assign specific session names for those paths
config-session-name 'dotfiles' \
  ~/.config/nvim \
  ~/dotfiles

# All projects under ~/code/work/* will open on a session named 'work'
config-org-session ~/code 'work'

# vim:ft=zsh
