if status is-interactive
    # Commands to run in interactive sessions can go here
end


eval (direnv hook fish)


status is-interactive; and pyenv init --path | source
pyenv init - | source


# goenv path
set -x GOENV_ROOT $HOME/.goenv
set -x PATH $GOENV_ROOT/bin $PATH
eval (goenv init - | source)
set -x PATH $GOPATH/bin $PATH
