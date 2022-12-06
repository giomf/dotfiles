# exa
alias ls="exa"
alias ll="exa -lbghF"
alias lt="exa --tree --level=2"
alias la="exa -lbghFa"

# trash-cli
alias dust="du -hs * | sort -hr"
alias rm='echo -e "Warning: \"rm\" will delete files permanently!\nUse \"trash\" instead to use a trashbin.\nUse \"\\\rm\" to bypass this warning."; false'
