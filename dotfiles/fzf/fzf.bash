# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/Kouiti/.config/nvim/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/Kouiti/.config/nvim/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/Kouiti/.config/nvim/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
# source "/Users/Kouiti/.config/nvim/fzf/shell/key-bindings.bash"
