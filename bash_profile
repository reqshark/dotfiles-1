alias ..="cd .."
alias a="git add -A"
alias au="git update-index --assume-unchanged"
alias au-="git update-index --no-assume-unchanged"
alias bu="brew upgrade && brew cleanup"
alias c="git commit -m"
alias ca="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias co="git checkout"
alias code='grep --line-number --exclude-dir "node_modules" --recursive --include "*.js"'
alias d="git diff"
alias ds="git diff --staged"
alias fu="git fetch upstream"
alias gb="git branch"
alias gc="git clone"
alias gf="git fetch --prune"
alias gl="git log --decorate"
alias gll="gl --oneline --graph --branches"
alias gm="git merge"
alias gr="git reset"
alias grep="grep --colour=auto"
alias gs="git stash"
alias gsp="git stash pop"
alias gsl="git stash list"
alias gsh="git show"
alias ll="ls -halG"
alias ls="ls -hG"
alias m="atom ."
alias mu="git merge upstream/master"
alias nodei="node --inspect-brk"
alias p="git push"
alias pu="git push upstream --all; git push upstream --tags"
alias pp="git pull --prune"
alias pt="git push --tags"
alias r="fc -s"
alias s="git status"
alias top="top -ocpu"

function repos {
    curl -s "https://api.github.com/users/${1-75lb}/repos?page=${2-1}&per_page=100" | jq '[ .[] | { full_name, description }]'
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

export EDITOR=vim
export PATH="/usr/local/bin:$PATH"

. `brew --prefix`/etc/profile.d/z.sh

source ~/.git-completion.bash

shopt -s globstar

PS1="\W \u:\$ "

export ANDROID_HOME=/usr/local/opt/android-sdk

HISTFILESIZE=5000
HISTSIZE=5000

export NVM_DIR="/Users/lloydb/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

for FILE in ~/.sources/*
do
  source $FILE
done

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

function transcode {
  echo "handbrake -i $1 -o ${1%.*}.mp4 --preset Normal --optimize"
  handbrake -i "$1" -o "${1%.*}".mp4 --preset Normal --optimize
}

function purge {
  git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch $1' --prune-empty --tag-name-filter cat -- --all
}
