alias ..="cd .."
alias a="git add -A"
alias c="git commit -m"
alias co="git checkout"
alias code="grep --line-number --exclude *node_modules* --recursive --include *.js"
alias d="git diff"
alias ds="git diff --staged"
alias fu="git fetch upstream"
alias gl="git log"
alias grep="grep --colour=auto"
alias ha="hg addremove"
alias hc="hg commit -m "
alias hd="hg diff"
alias hl="hg log -l 15 --stat --no-merges --removed"
alias hm="hg merge; hc 'merge'"
alias hp="hg push"
alias hpp="hg pull -u"
alias hs="hg status"
alias hsr="hg serve -p 8080"
alias hu="hg update"
alias jd="jsdoc -t templates/haruki -d console"
alias ll="ls -halG"
alias ls="ls -hG"
alias mu="git merge upstream/master"
alias nod="~/Documents/vendor/node/node --harmony"
alias nw="/Applications/node-webkit.app/Contents/MacOS/node-webkit"
alias p="git push"
alias pp="git pull"
alias pt="git push --tags"
alias r="fc -s"
alias s="git status"
alias sw="sass --watch --sourcemap"
alias tidy5="~/Documents/vendor/tidy-html5/bin/tidy -i --indent-spaces 4 -w --drop-empty-elements false "
alias top="top -ocpu"

function mou {
    open -a Mou "$1" ;sleep 0.5;ccf
}

function m {
    mate "${1-.}" ;sleep 0.5;ccf
}

function ghs {
    open "https://github.com/search?q=path%3Apackage.json+$1"
}

function repos {
    curl -s "https://api.github.com/users/${1-75lb}/repos?per_page=100" | array-tools pluck full_name
    curl -s "https://api.github.com/users/${1-75lb}/repos?page=2&per_page=100" | array-tools pluck full_name
}

function npmp {
    if [ -n "$1" ]
    then 
        npm version patch -m "$1" && p && pt && npm publish
    else
        npm version patch  && p && pt && npm publish
    fi
}
function npmm {
    if [ -n "$1" ]
    then 
        npm version minor -m "$1" && p && pt && npm publish
    else
        npm version minor && p && pt && npm publish
    fi
}

export EDITOR="/usr/local/bin/mate -w"
export PATH="/usr/local/bin:$PATH"

[[ -s ~/Documents/vendor/z/z.sh ]] && source ~/Documents/vendor/z/z.sh

source ~/.git-completion.bash

shopt -s globstar
