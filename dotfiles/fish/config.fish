if status is-interactive
    # Commands to run in interactive sessions can go here
end


eval (direnv hook fish)

# pyenv path
status is-interactive; and pyenv init --path | source
pyenv init - | source

# rust path
set -U fish_user_paths $fish_user_paths $HOME/.cargo/bin

#rbenv path
set -x PATH $HOME/rbenv init.rbenv/bin $PATH
eval (rbenv init - | source)

# goenv path
set -x GOENV_ROOT $HOME/.goenv
set -x PATH $GOENV_ROOT/bin $PATH
eval (goenv init - | source)
set -x PATH $GOPATH/bin $PATH

# shortcut
alias ga="git add ."
alias gs="git status"
alias gp="git pull"
alias gh="git push"
alias gd="git diff"
alias gb="git branch"
alias gl="git log"
alias dc="docker-compose"

alias code="code ."

alias cb="cd .."
