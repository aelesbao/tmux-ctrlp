#!/usr/bin/env zsh

local script_dir=${0:A:h}

function main {
  tmux bind -T 'C-p' run "${(D)script_dir}/bin/ctrlp"
}

main

# vim:ft=zsh
