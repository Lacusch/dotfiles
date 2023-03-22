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

function clone() {
    if [[ $1 =~ "hub|lab" ]]; then
        provider="$1"
        shift
    else
        provider="hub"
    fi

    eval "git clone git@git${provider}.com:$1.git $2"
}

# Examples
#commit                             # git add . && git commit -am “📝 Small changes”
#commit “:recycle: Refactor”        # git add . && git commit -am “♻️ Refactor”
#clone laravel/laravel              # git clone git@github.com:laravel/laravel.git
#clone laravel/laravel blog         # git clone git@github.com:laravel/laravel.git blog
#clone lab lorisleiva/private-repo  # git clone git@gitlab.com:lorisleiva/private-repo.git
#
# Found in an acticle https://lorisleiva.com/so-i-wrote-my-dotfiles
# By driesvints a laravel maintainer

