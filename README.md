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

## Todo

* Solar bindings contain still a piece of HTML `<td width="70" align="right" bgcolor="#FFFFFF">19502` and therefor I must use a string for now instead of a number. We we switch to a number the value is not shown because of the HTML tag I think
