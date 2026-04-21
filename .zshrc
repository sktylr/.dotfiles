export LESS="-FRX"
export PAGER="less"

export EDITOR="vi"

export LANG="en_IE.UTF-8"

() {
    local here="$( dirname ${(%):-%x} )"

    ## oh-my-zsh
    . $here/omz/omz.zsh
    . $here/omz/functions.zsh

    ## General
    . $here/aliases.zsh
    . $here/functions.zsh

    ## Git
    . $here/git/aliases.zsh
    . $here/git/functions.zsh
}
