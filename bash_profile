alias ls="ls -hG"
alias ll="ls -halG"
alias ..="cd .."
alias s="git status"
alias a="git add -A"
alias c="git commit -m"
alias p="git push"
alias pt="git push --tags"
alias co="git checkout"
alias pp="git pull"
alias d="git diff"
alias ds="git diff --staged"
alias top="top -ocpu"
alias hsr="hg serve -p 8080"
alias hpp="hg qpop -a --keep-changes; hg pull -u; hg qpush -a --keep-changes"
alias hp="hg push; hg qpush -a --keep-changes"
alias hu="hg update"
alias hc="hg qpop -a --keep-changes; hg commit -m "
alias hs="hg status"
alias hd="hg diff"
alias ha="hg addremove"
alias hl="hg log -l 8 --graph"

export EDITOR="/usr/local/bin/mate -w"

[[ -s ~/Documents/vendor/z/z.sh ]] && source ~/Documents/vendor/z/z.sh

#shopt -s globstar