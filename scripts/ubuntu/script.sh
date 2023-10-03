# NeoVim
if [ !"$(which nvim)" ] ; then
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
  chmod u+x nvim.appimage
  ./nvim.appimage
  ./nvim.appimage --appimage-extract
  ./squashfs-root/AppRun --version
  sudo mv squashfs-root /
  sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
fi

# Docker Engine
if [ !"$(which docker)" ] ; then
  for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done
  # Add Docker's official GPG key:
  sudo -E apt-get update
  sudo -E apt-get install ca-certificates curl gnupg
  sudo -E install -m 0755 -d /etc/apt/keyrings
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
  sudo -E chmod a+r /etc/apt/keyrings/docker.gpg

  # Add the repository to Apt sources:
  echo \
    "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
    sudo -E tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo -E apt-get update

  sudo -E apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
fi

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
  mkdir .trash
  curl -s https://api.github.com/repos/x-motemen/ghq/releases/latest \
          | grep "browser_download_url" \
          | grep -E "ghq_linux_amd64.zip" \
          | cut -f 4 -d '"' \
          | xargs -n1 curl -L -sS > trash/ghq.zip && \
      unzip -d trash trash/ghq.zip && \
      mv trash/ghq_linux_amd64/ghq /usr/bin/ghq
  rm -r .trash
fi
