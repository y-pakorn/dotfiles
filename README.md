# y-pakorn dotfiles

Dotfiles for macos, zsh

Font used:
- Fira Code 12px
- Hack Nerd 13px (For Non-ASCII)
- Horizontal Spacing 101
- Vertical Spacing 100

Color: [Onedark](https://github.com/navarasu/onedark.nvim)

![Screen Shot 2565-03-21 at 16 55 42](https://user-images.githubusercontent.com/48324733/159238786-d1913dd9-fc7a-4fd3-b553-402b18bf908c.png)

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
