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
alias m="~/Documents/vendor/75lbmeteor/meteor"
alias ws="python -m SimpleHTTPServer"

ANDROID="/Applications/android-sdk-macosx/tools/"
if [[ -d $ANDROID ]]; then
	export PATH=$PATH:$ANDROID
fi

export EDITOR="/usr/local/bin/mate -w"

[[ -s ~/Documents/vendor/z/z.sh ]] && source ~/Documents/vendor/z/z.sh