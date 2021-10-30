#!/bin/sh
####### install dein for nvim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

dotfiles_root=$(cd $(dirname $0)/.. && pwd)

####### symbolic
# linklist.txtのコメントを削除
__remove_linklist_comment() {(
    # '#'以降と空行を削除
    sed -e 's/\s*#.*//' \
        -e '/^\s*$/d' \
        $1
)}
# シンボリックリンクを作成
cd ${dotfiles_root}/dotfiles
linklist="linklist.txt"
[ ! -r "$linklist" ] && return
__remove_linklist_comment "$linklist" | while read target link; do
    # ~ や環境変数を展開
    target=$(eval echo "${PWD}/${target}")
    link=$(eval echo "${link}")
    # シンボリックリンクを作成
    mkdir -p $(dirname ${link})
    ln -fsn ${target} ${link}
done

####### homebrew
brew update
brew upgrade
brew install direnv
brew install pyenv

######### for fish shell
source ~/.config/fish/config.fish
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jethrokuan/z
fisher install jethrokuan/fzf
fisher install oh-my-fish/theme-bobthefish
