git-prune() {
    gb -a | grep -v "$1" | xargs git branch -D
}
