alias calias="less ~/.config/omz_custom/alias.zsh"

alias m="make"
alias reload="exec ${SHELL} -l"
#Git
alias g="git"
alias gs="git status"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gdf="git diff"
alias gac="git add . && dit commit"
alias gam="git add . && git commit -m "
alias push="git push"
alias pull="git pull --rebase"

#Functions

function commit() {
    commitMessage="$1"

    if [ "$commitMessage" = "" ]; then
        commitMessage=":pencil: Small changes"
    fi

    git add .
    eval "git commit -a -m '${commitMessage}'"
}
