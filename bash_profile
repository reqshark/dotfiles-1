alias ls="ls -hG"
alias ll="ls -halG"
alias ..="cd .."
alias s="git status"
alias a="git add -A"
alias c="git commit -m"
alias p="git push"
alias co="git checkout"
alias pp="git pull"
alias d="git diff"
alias ds="git diff --staged"
alias top="top -ocpu"
alias tracegl="node ~/Documents/vendor/tracegl"
alias hsr="hg serve -p 8080"
alias hpp="hg pull"
alias hp="hg push"
alias hu="hg update"
alias hc="hg commit -m"
alias hs="hg status"
alias hd="hg diff"

ANDROID="/Applications/android-sdk-macosx/tools/"
if [[ -d $ANDROID ]]; then
	export PATH=$PATH:$ANDROID
fi

export EDITOR="/usr/local/bin/mate -w"

[[ -s ~/Documents/vendor/z/z.sh ]] && source ~/Documents/vendor/z/z.sh

#shopt -s globstar