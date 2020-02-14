if [ -x /usr/bin/apt ]; then
echo APT
elif [ -x /usr/bin/yum ]; then
echo YUM
sudo yum install bash-completion
sudo yum install PackageKit-command-not-found
sudo yum install podman-docker
sudo yum install nano
sudo yum install wget
fi
wsl.exe -d alpine -u root
if [ -x /sbin/apk ]; then
apk add sudo
printf "\n%%wheel ALL=(ALL) ALL" >> /etc/sudoers
usermod -aG wheel jj
apk add curl
apk add nano
fi
