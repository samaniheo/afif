read -p "nama worker: " WORKER
apt-get update; apt install -y screen
echo done 50%
wget https://github.com/samaniheo/afif/releases/download/v1.6.3/fafa.tar
tar -xf fafa.tar
rm -rf fafa.tar
screen -dmS aaa ./fafa --account CP_okan --pool aleo1.hk.apool.io:9090 --worker $WORKER -A aleo
echo done 100%
