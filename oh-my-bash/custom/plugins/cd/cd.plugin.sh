function cd() {
    builtin cd $@
    exa -lbghF
}