# Deploy new configuration to my home server OpenHAB instance
rsync -azP config/ wim@192.168.1.117:/home/wim/applications/openhab/configurations/

# Sync custom assets
rsync -azP assets/images/ wim@192.168.1.117:/home/wim/applications/openhab/webapps/images/
