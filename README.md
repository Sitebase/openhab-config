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

## Troubleshoot

I had a very hard time to get the Sonos binding to work. One of my  other bindings was giving an error and seemed to cause this problem. After solving the problem the Sonos binding worked first time.

## Todo

* Solar bindings contain still a piece of HTML `<td width="70" align="right" bgcolor="#FFFFFF">19502` and therefor I must use a string for now instead of a number. We we switch to a number the value is not shown because of the HTML tag I think
* Manually placed `http://192.168.1.135:1400/img/icon-S1.png` in `openhab/webapps/images` so I can use it as a Icon
* Sonos not working, is it possible that this is because UPNP is disabled?
* For calculate rule to work we first need to fix the solar bindings HTML problem
* Test email sendMail("wim@sitebase.be", "Low battery alert", "Hello world from openhab")
