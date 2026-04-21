export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="random"
ZSH_THEME_LIKED="$HOME/.config/zsh/themes_liked"
ZSH_THEME_DISLIKED="$HOME/.config/zsh/themes_disliked"

() {
    [[ ! -f "$ZSH_THEME_DISLIKED" ]] && return
    ZSH_THEME_RANDOM_IGNORED=( ${(f)"$(cat $ZSH_THEME_DISLIKED)"} )
}

plugins=(git)

. $ZSH/oh-my-zsh.sh
