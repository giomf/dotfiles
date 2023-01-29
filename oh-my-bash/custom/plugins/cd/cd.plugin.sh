function cd() {
    builtin cd $@ && exa -l --no-time
}

