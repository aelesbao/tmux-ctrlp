#!/usr/bin/env zsh

local script_dir=${0:A:h}

function main {
  tmux bind 'C-p' run "${(D)script_dir}/bin/sensionizer"
}

main

# vim:ft=zsh
