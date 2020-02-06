if [ -x /usr/bin/apt ]; then
echo APT
elif [ -x /usr/bin/yum ]; then
echo YUM
fi
