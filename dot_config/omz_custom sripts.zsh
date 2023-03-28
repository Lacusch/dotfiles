function commit() {
    commitMessage="$1"

    if [ "$commitMessage" = "" ]; then
        commitMessage="Small changes"
    fi

    git add .
    eval "git commit -a -m '${commitMessage}'"
}

function gh_key() {
$(if [ -n "$GIT_AUTHOR_EMAIL" ]; then EMAIL="$GIT_AUTHOR_EMAIL"; else EMAIL=(git config user.email); fi)"
}

