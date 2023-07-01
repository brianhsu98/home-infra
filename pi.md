# Raspberry Pi

Main components
* Zigbee Hub
* Home assistant
* qbittorrent 
* Jellyfin for media server



Home assistant is the most complex.

* I run mosquitto (mqtt broker)
* zigbee2mqtt to connect up the zigbee stuff to home assistant
* home assistant

Right now, these things run in Docker with --restart=unless-stopped. Probably is a better way to do things.
Make sure to use --network=host (or set up networking between containers, but that's lame). 

Jellyfin and qbittorrent are just apt installed and then systemctl'd.
```


Install docker via usual means, making sure to enable the systemctl so stuff comes back up gracefully.
