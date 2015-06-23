BASE_DIR="/home/vagrant"


echo "Update packages"
apt-get update

echo "Install packages"
apt-get install -y default-jdk unzip

echo "Download OpenHAB runtime"
wget https://bintray.com/artifact/download/openhab/bin/distribution-1.7.0-runtime.zip -O $BASE_DIR/openhab.zip
rm -rf $BASE_DIR/openhab
unzip $BASE_DIR/openhab.zip -d $BASE_DIR/openhab

echo "Download OpenHAB addons"
wget https://bintray.com/artifact/download/openhab/bin/distribution-1.7.0-addons.zip -O $BASE_DIR/addons.zip
rm -rf $BASE_DIR/addons
unzip $BASE_DIR/addons.zip -d $BASE_DIR/addons

echo "Install addons"
cp $BASE_DIR/addons/org.openhab.binding.mqtt-1.7.0.jar $BASE_DIR/openhab/addons
cp $BASE_DIR/addons/org.openhab.binding.mqttitude-1.7.0.jar $BASE_DIR/openhab/addons
cp $BASE_DIR/addons/org.openhab.binding.xbmc-1.7.0.jar $BASE_DIR/openhab/addons
cp $BASE_DIR/addons/org.openhab.binding.plex-1.7.0.jar $BASE_DIR/openhab/addons
cp $BASE_DIR/addons/org.openhab.binding.sonos-1.7.0.jar $BASE_DIR/openhab/addons

echo "Link configuration"
ln -s /openhab-config/ $BASE_DIR/openhab/configuration

echo "Cleanup"
rm $BASE_DIR/openhab.zip
rm $BASE_DIR/addons.zip
