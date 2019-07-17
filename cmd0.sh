apt-get update && apt-get install curl wget sudo

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

