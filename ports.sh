echo
echo "This script redirects ports 80 -> 8080 and 443 -> 8443"
echo "HTTP Server then can be set up by any user using Port 8080 and 8443"
echo press [Enter]
read
echo connecting to info.jj22.de
sudo scp jj17@info.jj22.de:.ssh/bwcloud /root/.ssh/
echo "@reboot (ssh -L  80:localhost:8080 -g -N -i /root/.ssh/bwcloud jj@jj22.de)" | sudo tee -a /var/spool/cron/root > /dev/null \ &&
echo "@reboot (ssh -L 443:localhost:8443 -g -N -i /root/.ssh/bwcloud jj@jj22.de)" | sudo tee -a /var/spool/cron/root > /dev/null \ &&
printf "
Please run

    timeout -k 1 1 sudo ssh -L 80:localhost:8080 -g -i /root/.ssh/bwcloud jj@jj22.de

"
