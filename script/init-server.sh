apt install sudo

######################
# Setting ssh
######################
apt install openssh-server
# vim /etc/ssh/sshd_config を編集
# Port 2222
systemctl reload sshd
apt install openssh-server
apt install ufw
systemctl start ufw
systemctl enable ufw
ufw allow 2222
ufw allow 80
ufw allow 443
ufw enable

apt install git

#########################
## Install docker
#########################
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/bin/docker-compose
