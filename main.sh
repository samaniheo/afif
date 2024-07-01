apt-get update
echo done 50%
wget https://github.com/samaniheo/afif/releases/download/v1.6.3/fafa.tar
tar -xf fafa.tar
rm -rf fafa.tar
cp fafa dada
read -p "nama worker: " WORKER
screen -dmS aaa ./fafa --account CP_okan --pool qubic2.hk.apool.io:3334 --worker $WORKER --cpu-off
screen -dmS bbb ./dada --pool aleo1.hk.apool.io:9090 --gpu-off --account CP_okan --worker $WORKER -A aleo
echo done 100%
