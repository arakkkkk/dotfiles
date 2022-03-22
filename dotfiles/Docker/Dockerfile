FROM debian:latest
RUN apt-get update
RUN apt-get update
RUN apt-get install -y libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev
# git
RUN apt-get install -y git
# neovim
RUN apt-get install -y make
RUN apt-get install -y cmake
RUN apt-get install -y g++
RUN apt-get install -y pkg-config
RUN apt-get install -y unzip
RUN apt-get install -y libtool
RUN apt-get install -y gperf luajit luajit-5.1-dev lua-mpack lua-lpeg libunibilium-dev libmsgpack-dev libtermkey-dev
RUN git clone https://github.com/neovim/neovim.git ~/neovim
RUN cd ~/neovim
# RUN make CMAKE_BUILD_TYPE=Release
# RUN make install
# # astro vim
# RUN git clone https://github.com/kabinspace/AstroVim ~/.config/nvim
