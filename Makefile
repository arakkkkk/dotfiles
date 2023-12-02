make install:
	git clone https://github.com/arakkkkk/dotfiles.git && \
	chmod +x dotfiles/install.sh && \
	dotfiles/install.sh

make pull:
	git pull --recurse-submodules

