#!/bin/sh
####### homebrew
brew install direnv

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
j
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


source ~/.config/fish/fish/config.fish
