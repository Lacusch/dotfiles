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
alias ls="exa"
# Git Functions

# I found these two  in an acticle:  <https://lorisleiva.com/so-i-wrote-my-dotfiles>
# By driesvints a laravel maintainer

#commit                             # git add . && git commit -am “📝 Small changes”
#commit “:recycle: Refactor”        # git add . && git commit -am “♻️ Refactor”

function commit() {
    commitMessage="$1"

    if [ "$commitMessage" = "" ]; then
        commitMessage="Small changes"
    fi

    git add .
    eval "git commit -a -m '${commitMessage}'"
}

#clone laravel/laravel              # git clone git@github.com:laravel/laravel.git
#clone laravel/laravel blog         # git clone git@github.com:laravel/laravel.git blog
#clone lab lorisleiva/private-repo  # git clone git@gitlab.com:lorisleiva/private-repo.git

function clone() {
    if [[ $1 =~ "hub|lab" ]]; then
        provider="$1"
        shift
    else
        provider="hub"
    fi

    eval "git clone git@git${provider}.com:$1.git $2"
}

# funtion to make the generation of SSH-keys easier

function ssh_key() {
if [ -n "$GIT_AUTHOR_EMAIL" ]; then email="$GIT_AUTHOR_EMAIL"; else email=$(git config user.email); fi
echo "creating ssh key with the email $email"
ssh-keygen -t ed25519 -C "$email" && \
echo "activating ssh-agent" && \
eval "$(ssh-agent -s)" &&
ssh-add ~/.ssh/id_ed25519
}

alias ssh_list="cat ~/.ssh/id_ed25519.pub"
#alias n="fd --type f --hidden --exclude .git | fzf | xargs nvim"
alias n="fd --type f --hidden --exclude .git | fzf --preview 'bat {1}' | xargs nvim"

function article() {
touch $(date +"%m.%d.md")

cat << EOF > $(date +"%m.%d.md")
---
name: Article
date: $(date +%Y.%m.%d%n)
---
EOF
}
function journal() {
touch $(date +"%m.%d.md")

cat << EOF > $(date +"%m.%d.md")
---
date: $(date +%Y.%m.%d%n)
---
EOF
}
