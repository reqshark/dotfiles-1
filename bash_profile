alias ..="cd .."
alias a="git add -A"
alias c="git commit -m"
alias co="git checkout"
alias d="git diff"
alias ds="git diff --staged"
alias gl="git log"
alias grep="grep --colour=auto"
alias h+="hg qpush -a --keep-changes"
alias h-="hg qpop -a --keep-changes"
alias ha="hg addremove"
alias hc="hg commit -m "
alias hd="hg diff"
alias hl="hg log -l 8 --stat --no-merges --removed"
alias hp="hg push"
alias hpp="hg pull -u"
alias hs="hg status"
alias hsr="hg serve -p 8080"
alias hu="hg update"
alias ll="ls -halG"
alias ls="ls -hG"
alias npm="npm --registry http://registry.npmjs.eu/"
alias npm1="npm --registry https://registry.npmjs.org/"
alias p="git push"
alias pp="git pull"
alias pt="git push --tags"
alias r="fc -s"
alias s="git status"
alias tidy5="~/Documents/vendor/tidy-html5/bin/tidy -i --indent-spaces 4 -w --drop-empty-elements false "
alias top="top -ocpu"

export EDITOR="/usr/local/bin/mate -w"
export PATH="/usr/local/bin:$PATH"

[[ -s ~/Documents/vendor/z/z.sh ]] && source ~/Documents/vendor/z/z.sh

source ~/.git-completion.bash
# source ~/.npm-completion.bash

shopt -s globstar
