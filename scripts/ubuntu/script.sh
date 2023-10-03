# NeoVim
if [ !"$(which nvim)" ] ; then
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
  chmod u+x nvim.appimage
  ./nvim.appimage
  ./nvim.appimage --appimage-extract
  ./squashfs-root/AppRun --version
  ## Optional: exposing nvim globally.
  sudo mv squashfs-root /
  sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
fi

# Docker Engine

# ghq
if [ !"$(which ghq)" ] ; then
  go install github.com/x-motemen/ghq@latest
fi

# lazygit
if [ !"$(which lazygit)" ] ; then
  LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
  curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
  tar xf lazygit.tar.gz lazygit
  sudo -E install lazygit /usr/local/bin
fi

# lazydocker
if [ !"$(which lazydocker)" ] ; then
  curl -E https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
fi


# ghq
if [ !"$(which ghq)" ] ; then
  curl -s https://api.github.com/repos/protocolbuffers/protobuf/releases/latest \
          | grep "browser_download_url" \
          | grep -E "protoc-[0-9.]+-linux-x86_64.zip" \
          | cut -f 4 -d '"' \
          | xargs -n1 curl -L -sS > protoc.zip && \
      unzip protoc.zip && \
      mv bin/protoc /usr/local/bin
fi
