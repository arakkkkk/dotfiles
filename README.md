# dotfiles
## Content
- neovim
- pyenv             #3.7.0, 3.8.0, 3.9.0
- fish
- eslintrc
- prettierrc
- karabiner

## Quick start
```
cd ~/
git clone https://github.com/arakkkkk/dotfiles.git
chmod +x dotfiles/script/init.sh
dotfiles/script/init.sh
```

## Set up goenv
```
git clone https://github.com/syndbg/goenv.git $HOME/.goenv
```

## Install python in pyenv on fish
```
zsh
CPPFLAGS="-I$(brew --prefix openssl)/include -I$(brew --prefix bzip2)/include -I$(brew --prefix readline)/include -I$(brew --prefix zlib)/include" LDFLAGS="-L$(brew --prefix openssl)/lib -L$(brew --prefix readline)/lib -L$(brew --prefix zlib)/lib -L$(brew --prefix bzip2)/lib" pyenv install 3.7.0
CPPFLAGS="-I$(brew --prefix openssl)/include -I$(brew --prefix bzip2)/include -I$(brew --prefix readline)/include -I$(brew --prefix zlib)/include" LDFLAGS="-L$(brew --prefix openssl)/lib -L$(brew --prefix readline)/lib -L$(brew --prefix zlib)/lib -L$(brew --prefix bzip2)/lib" pyenv install 3.9.0
```

## If coc doesn't working
```
cd ~/.cache/dein/repos/github.com/neoclide/coc.nvim
yarn install
```
or/and
```
: call coc#util#install()
```
[coc extensions](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#implemented-coc-extensions)
