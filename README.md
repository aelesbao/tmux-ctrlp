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

Reload your `tmux` environment:

```sh
source-file ~/.tmux.conf
```

## Key bindings


| Binding | Option | Description |
|:-------:|:------:|-------------|
| `<prefix> C-p` | `@ctrlp_project_bind` | Fuzzy find across your defined workspace projects |
| `<prefix> C-s` | `@ctrlp_session_bind` | Fuzzy find across existing sessions with preview |


You can change the default bindings adding the following to your `tmux` config:

```tmux
# Remap in case you use <C-s> as you tmux prefix and want to send double C-s to
# the terminal
set -g @ctrlp_session_bind 's'
```

## Configuration

**TODO**.

Copy the [example config] to `~/.config/tmux/ctrlp.config.zsh` and use it as a
reference on how to setup the project folder and workspaces.

## License

[MIT](LICENSE.md)

[ThePrimeagen's script]: https://github.com/ThePrimeagen/.dotfiles/blob/master/bin/.local/scripts/tmux-sessionizer
[example config]: ./ctrlp.config.example.zsh
