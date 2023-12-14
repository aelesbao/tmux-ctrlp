#!/usr/bin/env zsh

local script_dir=${0:A:h}

function main {
  tmux bind 'C-p' run "${script_dir}/bin/ctrlp project"
}

main

# vim:ft=zsh
