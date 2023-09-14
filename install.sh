#!/usr/bin/bash

dotfiles_root=$(cd $(dirname $0)/ && pwd)
echo $(uname -a | grep MANJARO)

if [ $(uname) = "Darwin" ]; then
    brew upgrade
    OS="macos"
elif [ $(uname) = "Linux" ]; then
    if [ "$(uname -a | grep Ubuntu)" ]; then
        apt update
        apt upgrade
        OS="linux"
    elif [ "$(uname -a | grep MANJARO)" ]; then
        echo "Manjaro not support"
        exit
    else
        echo "not support os $(uname)"
        exit
    fi
else
    echo "not support os $(uname)"
    return
fi

source ${dotfiles_root}/scripts/utils.sh
######################
## packages
######################
packagelist="${dotfiles_root}/script/${OS}_packages.txt"
[ ! -r "$packagelist" ] && return
__parse_packagelist "$packagelist" | while read package; do
    brew install ${package}
done

######################
## symbolic
######################
linklist="${dotfiles_root}/script/${OS}/linklist.txt"
cd ${dotfiles_root}
[ ! -r "$linklist" ] && return
__parse_linklist "$linklist" | while read target link; do
    # ~ や環境変数を展開
    target=$(eval echo "${PWD}/${target}")
    link=$(eval echo "${link}")
    # シンボリックリンクを作成
    mkdir -p $(dirname ${link})
    ln -fsn ${target} ${link}
    echo ${target}
    echo "[Add Synbolic]  ${link}"
done
