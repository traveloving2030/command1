sudo mkdir /data && sudo chmod -R ugo+rw /data
git clone -b "rpi" https://github.com/Tunstad/Hyperprov.git

sudo fallocate -l 1G /swapfile
sudo dd if=/dev/zero of=/swapfile bs=1024 count=1048576
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo echo '/swapfile swap swap defaults 0 0' >> /etc/fstab

printf "\n"
printf "docker swarm complete\n"
