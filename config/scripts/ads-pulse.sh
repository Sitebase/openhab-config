echo "ADS: pulse symbol $1"
mosquitto_pub -t hello -m $1
