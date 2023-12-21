#!/usr/bin/env zsh

# Defines project paths to be included in the search list as is.
declare -U projects=()

# Defines global workspaces with git repositories to be included
# in the project paths.
declare -U workspaces=()

# Maximum depth to search for projects in the workspaces.
declare -i max_depth=2

# Defines preferred session names for specific project folders.
declare -A session_names=()

local config_file_name="ctrlp.config.zsh"

# Configures session name preferences for specific projects.
function config-session() {
  local name="$1"
  local -U paths=(${argv[@]:2})

  for p in ${~paths}; do
    session_names[$p]=$name
  done
}

# Configure all names as the desired session name for org repos in a root path.
#
# Ex: given the following path structure
#
# ~/code
#   org-a/
#     project-1/
#     project-2/
#   org-b/
#     project-1/
#     foo-bar/
#
# Calling `config-org-session ~/code org-a org-b` will define that every time
# a project on path ~/code/org-a/* is opened, the session name will be 'org-a'.
function config-org-session() {
  local root_path="${~1}"
  local -U names=(${argv[@]:2})

  for name in ${names[@]}; do
    config-session "$name" $root_path/$name/*
  done
}

function get-tmux-config-dir {
  local tmux_config_xdg="${XDG_CONFIG_HOME:-$HOME/.config}/tmux/tmux.conf"

  if [ -f "${tmux_config_xdg}" ]; then
    echo "${tmux_config_xdg:h}"
  else
    echo "$HOME"
  fi
}

# Loads the config file located at ~/.config/tmux or ~/.tmux
function load-config {
  local config_file="$(get-tmux-config-dir)/$config_file_name"
  [[ -f "${config_file}" ]] && source "$config_file"
}
