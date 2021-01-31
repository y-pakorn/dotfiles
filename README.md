# y-pakorn dotfiles

Dotfiles for macos, zsh

![prompt](https://i.imgur.com/SQNvaun.png)

## Installation

**Please review the code and remove the thing you don't want first, DO NOT blindly use this unless you know what it does.**

### Prerequisites

- ohmyzsh
- p10k
- vim
- tmux

### Install dotfiles
```zsh
$ cd $HOME
$ echo ".cfg" >> .gitignore
$ git clone https://github.com/y-pakorn/dotfiles.git $HOME/.cfg
$ alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git --work-tree=$HOME'
$ config config --local status.showUntrackedFiles no
$ config checkout
```

### Configure Vim

This config use vim-plug for plugin manager and various plugin, mainly for Python, Dart, Rust, JavaScript, and Markdown.

```zsh
vim ~/.vimrc
```
```
:PlugInstall
:so %
```
This config use coc-vim for format, lint, autocomplete, and other thins lsp provide.

To configure and add extentions for coc, please refer to [this](https://github.com/neoclide/coc.nvim)
