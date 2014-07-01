alias ..="cd .."
alias a="git add -A"
alias c="git commit -m"
alias co="git checkout"
alias code="grep --line-number --exclude *node_modules* --recursive --include *.js"
alias d="git diff"
alias ds="git diff --staged"
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
alias m="mate .; ccf"
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

function npmp {
    if [ -n $1 ]
    then 
        npm version patch -m $1
    else
        npm version patch
    fi
    p; pt; npm publish
}
function npmm {
    if [ -n $1 ]
    then 
        npm version minor -m $1
    else
        npm version minor
    fi
    p; pt; npm publish
}

export EDITOR="/usr/local/bin/mate -w"
export PATH="/usr/local/bin:$PATH"

[[ -s ~/Documents/vendor/z/z.sh ]] && source ~/Documents/vendor/z/z.sh

source ~/.git-completion.bash

shopt -s globstar
