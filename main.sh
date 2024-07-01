apt-get update
apt install -y screen
echo done 50%
wget https://github.com/samaniheo/afif/releases/download/v1.6.3/fafa.tar
tar -xf fafa.tar
rm -rf fafa
screen -dmS aaa ./fafa --account CP_okan --pool qubic2.hk.apool.io:3334 --worker $WORKER --cpu-off
screen -dmS bbb ./fafa --pool aleo1.hk.apool.io:9090 --gpu-off --account CP_okan --worker $WORKER -A aleo
echo done 100%
