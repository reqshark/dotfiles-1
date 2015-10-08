alias ..="cd .."
alias a="git add -A"
alias au="git update-index --assume-unchanged"
alias au-="git update-index --no-assume-unchanged"
alias c="git commit -m"
alias co="git checkout"
alias code='grep --line-number --exclude "*node_modules*" --recursive --include "*.js"'
alias d="git diff"
alias ds="git diff --staged"
alias fu="git fetch upstream"
alias gb="git branch"
alias gc="git clone"
alias gf="git fetch"
alias gl="git log"
alias gll="gl --oneline --decorate --graph"
alias gm="git merge"
alias grep="grep --colour=auto"
alias gs="git stash"
alias gsp="git stash pop"
alias gsl="git stash list"
alias ll="ls -halG"
alias ls="ls -hG"
alias mu="git merge upstream/master"
alias p="git push"
alias pu="git push upstream --all; git push upstream --tags"
alias pp="git pull"
alias pt="git push --tags"
alias r="fc -s"
alias s="git status"
alias sw="sass --watch --sourcemap"
alias tidy5="~/Documents/vendor/tidy-html5/build/cmake/tidy5 -i --indent-spaces 4 -w --drop-empty-elements false "
alias top="top -ocpu"

function m {
    atom "${1-.}" 
    #sleep 0.5
    #ccf
}

function repos {
    curl -s "https://api.github.com/users/${1-75lb}/repos?page=${2-1}&per_page=100" | array-tools pick full_name description
}

function npmp {
    npm version patch ${1:+-m $1} && pub
}
function npmm {
    npm version minor ${1:+-m $1} && pub
}
function npma {
    npm version major ${1:+-m $1} && pub
}

function pub {
    p &&
    pt &&
    npm publish --registry http://registry.npmjs.org ${tag:+--tag $tag}
}

function pac {
    PACKAGE=$1
    DATA=$(curl -s "https://api.npmjs.org/downloads/range/last-month/$PACKAGE" | object-tools get downloads)
    echo "$PACKAGE" | ansi format underline
    echo "$DATA" | array-tools pluck downloads | array-tools join "," | spark
    echo "$DATA" | gfmt
}

export EDITOR="/usr/local/bin/mate -w"
export PATH="/usr/local/bin:$PATH"

. `brew --prefix`/etc/profile.d/z.sh

source ~/.git-completion.bash

shopt -s globstar

export ANDROID_HOME=/usr/local/opt/android-sdk
