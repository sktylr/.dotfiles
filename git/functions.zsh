git-prune() {
    gb -a | grep -v "$1" | xargs gb -D
}
