() {
    local here="$( dirname ${(%):-%x} )"

    ## General
    . $here/aliases.zsh
    . $here/functions.zsh

    ## Git
    . $here/git/aliases.zsh
    . $here/git/functions.zsh
}

export LESS="-FRX"
export PAGER="less"
