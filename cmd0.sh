

wget https://dl.google.com/go/go1.11.1.linux-arm64.tar.gz
sudo tar -C /usr/local -xzf go1.11.1.linux-arm64.tar.gz
printf "\n"
printf "tar Complete"

echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile 
echo 'export GOPATH=$HOME/go' >> ~/.profile
. ~/.profile
echo $GOPATH

printf "\n"
printf "GOPATH complete"

sudo curl -sSL https://get.docker.com | sh
sudo curl -s https://packagecloud.io/install/repositories/Hypriot/Schatzkiste/script.deb.sh | bash
sudo apt-get install -y docker-compose

sudo apt-get install -y git python-pip python-dev docker-compose build-essential libtool libltdl-dev libssl-dev libevent-dev libffi-dev
sudo pip install --upgrade pip
sudo pip install --upgrade setuptools
sudo pip install behave nose docker-compose
sudo pip install -I flask==0.10.1 python-dateutil==2.2 pytz==2014.3 pyyaml==3.10 couchdb==1.0 flask-cors==2.0.1 requests==2.4.3 pyOpenSSL==16.2.0 pysha3==1.0b1 grpcio==1.0.4


sudo curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo docker pull ptunstad/fabric-baseos:arm64-0.4.15 &&
sudo docker pull ptunstad/fabric-basejvm:arm64-0.4.15 &&
sudo docker pull ptunstad/fabric-baseimage:arm64-0.4.15 &&
sudo docker pull ptunstad/fabric-ccenv:arm64-1.4.1 &&
sudo docker pull ptunstad/fabric-peer:arm64-1.4.1 &&
sudo docker pull ptunstad/fabric-orderer:arm64-1.4.1 &&
sudo docker pull ptunstad/fabric-zookeeper:arm64-1.4.1 &&
sudo docker pull ptunstad/fabric-kafka:arm64-1.4.1 &&
sudo docker pull ptunstad/fabric-couchdb:arm64-1.4.1 &&
sudo docker pull ptunstad/fabric-tools:arm64-1.4.1



