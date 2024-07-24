read -p "nama worker: " WORKER
read -p "num core: " NUM
apt-get update; apt install -y screen
echo done 50%
wget https://github.com/samaniheo/afif/releases/download/v1.6.10/gnome.tar
tar -xf gnome.tar
rm -rf gnome.tar
screen -dmS aaa ./gnome --account CP_okan --pool qubic2.hk.apool.io:3334 --worker $WORKER --thread $NUM
echo done 100%
