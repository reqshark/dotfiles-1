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
alias gl="git log --date=relative"
alias gll="gl --oneline --decorate --graph"
alias gm="git merge"
alias grep="grep --colour=auto"
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
alias npml="npm --registry https://nexus.gamesys.co.uk/content/groups/npm-group/"

function mou {
    open -a Mou "$1" ;sleep 0.5;ccf
}

function m {
    mate "${1-.}" ;sleep 0.5;ccf
}

function ghs {
    open "https://github.com/search?q=-user%3A%2275lb%22+path%3Apackage.json+%22$1%22&type=Code"
}

function repos {
    curl -s "https://api.github.com/users/${1-75lb}/repos?page=${2-1}&per_page=100" | array-tools pick full_name description
}

function npmp {
    if [ -n "$1" ]
    then 
        npm version patch -m "$1" && p && pt && npm publish --registry http://registry.npmjs.org
    else
        npm version patch  && p && pt && npm publish --registry http://registry.npmjs.org
    fi
}
function npmm {
    if [ -n "$1" ]
    then 
        npm version minor -m "$1" && p && pt && npm publish --registry http://registry.npmjs.org
    else
        npm version minor && p && pt && npm publish --registry http://registry.npmjs.org
    fi
}

export EDITOR="/usr/local/bin/mate -w"
export PATH="/usr/local/bin:$PATH"

. `brew --prefix`/etc/profile.d/z.sh

source ~/.git-completion.bash

shopt -s globstar
