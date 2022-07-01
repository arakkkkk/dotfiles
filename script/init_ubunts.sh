#!/bin/sh
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
apt update
apt upgrade
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
sudo apt-get install fonts-powerline
apt-get install gcc
apt-get install cmake
apt-get install zlib1g-dev

# brew install nodejs
# brew install yarn
# brew install zsh
# linter, fixer
# brew install black
# brew install isort
# brew install prettier
# brew install autopep8
# brew install jq

######### for fish shell
source ~/.config/fish/config.fish
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jethrokuan/z
fisher install jethrokuan/fzf
fisher install oh-my-fish/theme-bobthefish


