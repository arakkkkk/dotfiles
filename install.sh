#!/usr/bin/bash
dotfiles_root=$(cd $(dirname $0)/ && pwd)
source ${dotfiles_root}/scripts/utils.sh

echo $OS

if [ $1 == "" ]; then
    $package
    $symbolic
    $script
elif [ $1 == "package" ]; then
    $package
elif [ $1 == "symbolic" ]; then
    $symbolic
elif [ $1 == "script" ]; then
    $script
fi



######################
## packages
######################
package() {
    packagelist="${dotfiles_root}/scripts/${OS}/packagelist.txt"
    [ ! -r "$packagelist" ] && return
    __parse_packagelist "$packagelist" | while read package; do
        if [ $OS == "macos" ]; then
           brew install ${package}
        elif [ $OS == "ubuntu" ]; then
            apt install -y ${package}
        fi
    done
}

######################
## symbolic
######################
symbolic() {
    linklist="${dotfiles_root}/scripts/${OS}/linklist.txt"
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

}

######################
## script
######################
script() {
    ./${dotfiles_root}/scripts/${OS}/script.sh
}
