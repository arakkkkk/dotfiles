# dotfiles
### get start
```
cd ~/
git clone https://github.com/arakkkkk/dotfiles.git
chmod +x dotfiles/script/init.sh
dotfiles/script/init.sh
```
- edit init.vim python path
- edit init.vim coc_node_path

### Set up goenv
```
git clone https://github.com/syndbg/goenv.git $HOME/.goenv
```

### Install python in pyenv on fish
```
LDFLAGS=-"L(brew --prefix zlib)/lib -L(brew --prefix bzip2)/lib" pyenv install 3.7.9
```
