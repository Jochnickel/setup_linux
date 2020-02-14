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
if [ -x /sbin/apk ]; then
wsl.exe -d alpine -u root apk add bash
printf "please change the root password by executing \n\n   bash\n   bash <(printf \"wsl.exe -d alpine -u root passwd\")\n\n"
wsl.exe -d alpine -u root apk add sudo
wsl.exe -d alpine -u root printf "\n%%wheel ALL=(ALL) ALL" >> /etc/sudoers
wsl.exe -d alpine -u root usermod -aG wheel jj
wsl.exe -d alpine -u root apk add command-not-found
fi
