apt-get install curl wget sudo

wget https://dl.google.com/go/go1.11.1.linux-arm64.tar.gz
tar -C /usr/local -xzf go1.11.1.linux-arm64.tar.gz
printf "\n"
printf "tar Complete"

echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile 
echo 'export GOPATH=$HOME/go' >> ~/.profile
. ~/.profile
echo $GOPATH

printf "\n"
printf "GOPATH complete"

curl -sSL https://get.docker.com | sh
curl -s https://packagecloud.io/install/repositories/Hypriot/Schatzkiste/script.deb.sh | bash
apt-get install docker-compose

printf "\n"
docker ps

apt-get install git python-pip python-dev docker-compose build-essential libtool libltdl-dev libssl-dev libevent-dev libffi-dev
printf "\n"
printf "1. OK"
pip install --upgrade pip
printf "\n"
printf "2. OK"
pip install --upgrade setuptools
printf "\n"
printf "3. OK"
pip install behave nose docker-compose
printf "\n"
printf "4. OK"

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

docker pull ptunstad/fabric-baseos:arm64-0.4.15 &&
docker pull ptunstad/fabric-basejvm:arm64-0.4.15 &&
docker pull ptunstad/fabric-baseimage:arm64-0.4.15 &&
docker pull ptunstad/fabric-ccenv:arm64-1.4.1 &&
docker pull ptunstad/fabric-peer:arm64-1.4.1 &&
docker pull ptunstad/fabric-orderer:arm64-1.4.1 &&
docker pull ptunstad/fabric-zookeeper:arm64-1.4.1 &&
docker pull ptunstad/fabric-kafka:arm64-1.4.1 &&
docker pull ptunstad/fabric-couchdb:arm64-1.4.1 &&
docker pull ptunstad/fabric-tools:arm64-1.4.1

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


