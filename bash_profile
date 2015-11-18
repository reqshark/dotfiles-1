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

function dep {
  PACKAGE=$1
  DATA=$(curl -s "http://registry.npmjs.org/-/_view/dependedUpon?group_level=3&startkey=%5B%22$PACKAGE%22%5D&endkey=%5B%22$PACKAGE%22%2C%7B%7D%5D&skip=0&limit=1000" | jq '.rows | map({ Package: .key[1], Description: .key[2] })')
  TOTAL=$(echo "$DATA" | jq length)
  echo "$DATA" | gfmt -w
  echo "total: $TOTAL"
}

function gitsnap {
  imagesnap -q -w 1 ~/Pictures/snap/$(date +%s).jpg &
}

export EDITOR="/usr/local/bin/mate -w"
export PATH="/usr/local/bin:$PATH"

. `brew --prefix`/etc/profile.d/z.sh

source ~/.git-completion.bash

shopt -s globstar

PS1="\W \u:\$ "

export ANDROID_HOME=/usr/local/opt/android-sdk

function init-hive {
  source /Users/lloyd/Documents/75lb/dotfiles/tmp/hive.sh
}

export NVM_DIR="/Users/lloyd/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

HISTFILESIZE=10000
HISTSIZE=10000
