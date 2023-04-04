starship init fish | source
z -c

# pyenv path
status is-interactive; and pyenv init --path | source
pyenv init - | source

# rust path
set -x fish_user_paths $fish_user_paths $HOME/.cargo/bin

# #rbenv path
# set -x PATH $HOME/rbenv init.rbenv/bin $PATH
# # eval (rbenv init - | source)
#
# # goenv path
# set -x GOENV_ROOT $HOME/.goenv
# set -x PATH $GOENV_ROOT/bin $PATH
# eval (goenv init - | source)
# set -x PATH $GOPATH/bin $PATH

# shortcut
alias ga="git add ."
alias gc="git commit -m 'update'"
alias gs="git status"
alias gp="git pull"
alias gu="git push"
alias gd="git diff"
alias gb="git branch"
alias gl="git log"
alias lg="lazygit"
alias ld="lazydocker"
alias t="tmux a"
alias vi="nvim"
alias dc="docker-compose"
alias code="code ."
alias transe="trans {en=ja}"
alias transj="trans {ja=en}"
alias tt="task sync & taskwarrior-tui"

#for tmux
alias ide="sh ~/.config/tmux/ide.sh"

# For ratate monitor
# xrandr --output HDMI-A-0 --rotate normal
# xrandr --output DisplayPort-0 --pos 0x0 --output HDMI-A-0 --pos -1920x0
