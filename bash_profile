PROMPT_COLOR='\e[00m\e[31;05;166m'
export PS1='\['$PROMPT_COLOR'\]\u@\h:\w  ϕ\[\e[0m\] '

# Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

alias e='emacs'

alias sudo='sudo '

# Chef
alias bxk="bundle exec knife "

#rails
alias be="bundle exec "
alias routes="bundle exec rake routes | grep "
alias trbl="bundle exec testrbl -I test "

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
alias g="git "
alias ginit="git init"
alias gblame="git blame"
alias ggrep="git grep"
alias gco="git checkout"
alias gcbr="git checkout -b"
alias gc="git commit"
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
alias gclone="git clone"
alias gcp="git cherry-pick"

chist() {
  fileNames=$(gdiff | grep -e --- | sed 's/--- a\/'//)
  for fileName in $fileNames
  do
    changedLines=$(gdiff --unified=0 $fileName | grep @@ | sed 's/@@ //' | sed 's/ @@.*//' | sed 's/-//' | sed 's/,.*//' | sed 's/ .*//')
    echo Changed file: $fileName
    for changedLine in $changedLines
    do
      echo Diff start: $changedLine
      git blame HEAD $fileName -L $changedLine,$changedLine
    done
  done
}

# tmux commands
alias tls="tmux ls"
alias tnew="TMUX= tmux new -d -s "
alias tsw="tmux switch -t "
alias tkill="tmux kill-session"
alias tmux="tmux -2"
alias tma="tmux attach -d -t"
alias gmux="tmux new -s $(basename $(pwd))"

# added by Anaconda2 5.0.0 installer
export PATH="/Users/ps/anaconda2/bin:$PATH"

groundControlToMajorTom() {
  curl 'http://api.open-notify.org/iss-now.json' | jq .
}
