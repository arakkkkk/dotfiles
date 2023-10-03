__parse_packagelist() {(
    # '#'以降と空行を削除
    sed -e 's/\s*#.*//' \
        -e '/^\s*$/d' \
        $1
)}


__parse_linklist() {(
    # '#'以降と空行を削除
    sed -e 's/\s*#.*//' \
        -e '/^\s*$/d' \
        $1
)}

if [ $(uname) = "Darwin" ]; then
    brew upgrade
    OS="macos"
elif [ $(uname) = "Linux" ]; then
    if [ "$(uname -a | grep Ubuntu)" ]; then
        apt update
        apt upgrade
        OS="ubuntu"
    elif [ "$(uname -a | grep MANJARO)" ]; then
        # echo "Manjaro not support"
        OS="ubuntu"
        # exit
    else
        echo "not support os $(uname)"
        exit
    fi
else
    echo "not support os $(uname)"
    return
fi
