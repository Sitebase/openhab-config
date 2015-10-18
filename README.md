# OpenHAB Configuration

This project contains my configuration for  OpenHAB.

## Testing

For testing pruposes I've added a Vagrant configuration so it's easy to run it locally to test out some new configurations.
To use it run

    vagrant up

after the box is setup you can access it by browsing to:

    http://localhost:8888/openhab.app?sitemap=demo

## Production

[View OpenHAB](http://192.168.1.117:8080/openhab.app?sitemap=demo)

## Sonos configuration

View info about all sonos players:

    http://192.168.1.135:1400/status/topology

Show network traffic in wireshare:

    tcp.port == 1400 && http

strange thing is that I see traffic when I use the Sonos controller on my laptop but nothing is showing up when openhab is supposed to be scanning for devices.

## OSGI

Test openhab command on the command line. In the window that is running `./start.sh` hit `enter` and now for example type this command:

    openhab send Sonos_GF_KitchenUID ON

## Send email

    logInfo("Email", "Send email to sitebase")
    sendMail("wim@bubobox.com", "Low battery alert", "Hello world from openhab BALBLABLALBLALB")

## Popcorn time

Movie info

    curl 'http://192.168.1.119:8008/' -H 'Authorization: cG9wY29ybjpwb3Bjb3Ju' --data '{"id":96,"method":"getplaying","jsonrpc":"2.0","params":[]}'

Toggle play

    curl 'http://192.168.1.119:8008/' -H 'Authorization: cG9wY29ybjpwb3Bjb3Ju' --data '{"id":30,"method":"toggleplaying","jsonrpc":"2.0","params":[]}'

## Rest API

Accessing REST API via cURL. cURL is useful on shell scripts (Win/Linux/OS X) or e.g. on Automator (OS X).

Get state of an item:

curl http://192.168.100.21:8080/rest/items/MyLight/state
Set state of an item:

curl --header "Content-Type: text/plain" --request PUT --data "OFF" http://192.168.100.21:8080/rest/items/MyLight/state
Send command to an item:

curl --header "Content-Type: text/plain" --request POST --data "ON" http://192.168.100.21:8080/rest/items/MyLight


## Troubleshoot

I had a very hard time to get the Sonos binding to work. One of my  other bindings was giving an error and seemed to cause this problem. After solving the problem the Sonos binding worked first time.

## Todo

* if PVR current solar is null it will start to use the total energy number

//Switch LivingLight "Living light" { exec=">[*:/bin/sh ./configurations/scripts/ads-pulse.sh .cToggleOfficeLight]" }
//Switch LivingLight2 {mqtt=">[sitebase:bla:command:ON:1],>[sitebase:bla:command:OFF:0]"}
