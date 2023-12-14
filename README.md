# Session manager for TMUX

Another tmux session manager. Adapted from [ThePrimeagen's script] with a few
tweaks and extra inspiration from other plugins.

## Motivation

## How it works

## Dependencies

For this plugins to work, you should have installed:

- zsh
- fd
- fzf
- zoxide
- eza

## Installation

### Using [TMUX Plugin Manager](https://github.com/tmux-plugins/tpm)

```tmux
set -g @plugin 'aelesbao/tmux-ctrlp'
```

Press `prefix + I` to install the plugin.

### Manual Installation

Clone the repo:

```sh
git clone https://github.com/aelesbao/tmux-ctrlp ~/.tmux/plugins/tmux-ctrlp
```

Add this line to the bottom of your `.tmux.conf`:

```tmux
run ~/.tmux/plugins/tmux-ctrlp/ctrlp.tmux
```

Reload your TMUX environment:

```sh
source-file ~/.tmux.conf
```

## Key bindings


| Binding | Description |
|:-------:|-------------|
| `<prefix> C-p` | Fuzzy find across your defined workspace projects |

## License

[MIT](LICENSE.md)

[ThePrimeagen's script]: https://github.com/ThePrimeagen/.dotfiles/blob/master/bin/.local/scripts/tmux-sessionizer
