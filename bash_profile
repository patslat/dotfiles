PROMPT_COLOR='\e[00m\e[31;05;166m'
export PS1='\['$PROMPT_COLOR'\]\w\$\[\e[0m\] '

alias sudo='sudo '

# sbt
alias sbt='JAVA_OPTS="-Xmx1280M -Xms512M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=512M" sbt-0.11'

# git commands
alias ginit="git init"
alias ggrep="git grep"
alias gco="git checkout"
alias gcbr="git checkout -b"
alias gcm="git commit -m"
alias gst="git status"
alias gbr="git branch"
alias ghist="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias gtype="git cat-file -t"
alias gdump="git cat-file -p"
alias gdiff="git diff"
alias gadd="git add"
alias gp="git push"
alias gpm="git push patrick master"
alias gmg="git merge"
alias grm="git rm"
alias gra="git remote add"
alias gpull="git pull"

# tmux commands
alias tls="tmux ls"
alias tkill="tmux kill-session"
alias tmux="tmux -2"
alias tma="tmux attach -d -t"
alias gmux="tmux new -s $(basename $(pwd))"

#zookeeper
alias zoo="~/zookeeper-3.3.6/bin/zkServer.sh"

export CC=gcc-4.2
export CXX=g++-4.2
export CPP=cpp-4.2

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
