source $HOME/.git-prompt.sh

# プロンプトに各種情報を表示
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

export PS1='\[\033[1;32m\]\u\[\033[00m\]:\[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\] \$ '

function dict() {
  sh ~/tools/dict.sh $1
}

# alias
alias ll='ls -la --color=auto'

# alias git
alias ga='git add .'
alias gb='git branch'
alias gs='git status'
alias gp='git pull origin `git rev-parse --abbrev-ref HEAD`'
alias gpush='git push origin `git rev-parse --abbrev-ref HEAD`'
alias gci='git commit -v'
alias gco='git checkout'
