PROMPT_COLOR='\e[00m\e[31;05;166m'
export PS1='\['$PROMPT_COLOR'\]\w\$\[\e[0m\] '
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export PATH="$JAVA_HOME/bin:$PATH"

alias sudo='sudo '

#rails
alias be="bundle exec "

# sbt
alias sbt='JAVA_OPTS="-Xmx1280M -Xms512M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=512M" sbt-0.11'

# nodetool
PATH=$HOME/apache-cassandra-1.0.12/bin:$PATH/

# task switch, check out or create new branch and attach or create matching tmux session
taskSwitch() {
  git checkout master
  git checkout $1 || git checkout -b $1;
  tmux switch -t $1 || TMUX= tmux new -d -s $1 && tmux switch -t $1;
}
taskKill() {
  git checkout master
  git branch -d $1
  tmux kill-session -t $1
}

alias task=taskSwitch
alias taskKill=taskKill

# git commands
alias ginit="git init"
alias gblame="git blame"
alias ggrep="git grep"
alias gco="git checkout"
alias gcbr="git checkout -b"
alias gcm="git commit -m"
alias gst="git status"
alias gstash="git stash"
alias gbr="git branch"
alias ghist="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias gtype="git cat-file -t"
alias gdump="git cat-file -p"
alias gdiff="git diff"
alias gadd="git add"
alias gp="git push"
alias gpm="git push patrick master"
alias gphm="git push heroku master"
alias gmg="git merge"
alias grm="git rm"
alias gra="git remote add"
alias gpull="git pull"

# tmux commands
alias tls="tmux ls"
alias tnew="TMUX= tmux new -d -s "
alias tsw="tmux switch -t "
alias tkill="tmux kill-session"
alias tmux="tmux -2"
alias tma="tmux attach -d -t"
alias gmux="tmux new -s $(basename $(pwd))"

#zookeeper
alias zoo="~/zookeeper-3.3.6/bin/zkServer.sh"
alias logz="tail -f log/development.log"
#export cc="/usr/local/Cellar/gcc46"
#export CC=gcc-4.2
#export CXX=g++-4.2
#export CPP=cpp-4.2

#cassandra
alias cass="~/apache-cassandra-1.0.12/bin/cassandra -f"
alias casscli="~/apache-cassandra-1.0.12/bin/cassandra-cli -h localhost -p 9160"



PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
