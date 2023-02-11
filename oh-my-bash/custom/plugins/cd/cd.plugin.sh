#! bash oh-my-bash.module

function cd() {
    builtin cd $@ && exa -l --no-time
}

