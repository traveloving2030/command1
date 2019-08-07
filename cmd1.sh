sudo git clone https://github.com/traveloving2030/Hyperprov4
sudo git clone https://github.com/Tunstad/Hyperprov
cd Hyperprov
sudo rm -rf docker-compose-cli.yaml
cd scripts
sudo rm -rf script_ds.sh
cd /data/Hyperprov4
sudo cp docker-compose-cli.yaml ../Hyperprov
cd /data/Hyperprov4/scripts
sudo cp script_ds.sh ../../Hyperprov/scripts/
