### .dotfiles

This repo contains my dotfile setup for some aliases and functions.

#### zsh

To use the aliases and functions within this repo in zsh, add the following line to `$HOME/.zshrc`

```shell
. path/to/.dotfiles/.zshrc
```

#### vi, vim, and neovim

To use the vim config, add the following line to `$HOME/.vimrc`

```vim
source path/to/.dotfiles/.vimrc
```

Install Neovim on macOS with `brew install neovim`. Create
`${XDG_CONFIG_HOME:-$HOME/.config}/nvim/init.vim` and add:

```vim
source path/to/.dotfiles/.config/nvim/init.vim
```

#### git

Functions and aliases are held in the [`git`](./git/) subdirectory.

### oh-my-zsh

I use [`oh-my-zsh`](https://ohmyz.sh/) to customise my zsh functionality.
The settings can be found in [`omz`](./omz/).
[`.zshrc`](./.zshrc) already contains the necessary commands to configure oh-my-zsh.

I am currently exploring which theme I'd like to use, so have a random theme loaded every time I start a new shell session.
I can then mark themes as ones that I like or dislike to narrow down the options.
When creating a new shell session, oh-my-zsh avoids picking a random theme that I have already marked as one I don't like.
This can be overridden by specifying `ZSH_THEME=<theme>` before sourcing [`.zshrc`](./.zshrc).
