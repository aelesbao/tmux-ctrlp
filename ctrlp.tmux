#!/usr/bin/env zsh

local script_dir=${~0:A:h}

function get-tmux-option {
  local option="$1"
  local default_value="$2"
  local option_value="$(tmux show-option -gqv "$option")"
  echo "${option_value:-$default_value}"
}

function main {
  tmux bind $(get-tmux-option "@ctrlp_project_bind" "C-p") \
    run "${script_dir}/bin/ctrlp project"

  tmux bind $(get-tmux-option "@ctrlp_session_bind" "C-s") \
    run "${script_dir}/bin/ctrlp session"
}

main

# vim:ft=zsh
