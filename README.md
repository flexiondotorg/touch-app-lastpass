# LastPass mobile Ubuntu Touch webapp

This webapp is based on ogra's alternate-webapp-container:

    bzr branch lp:~ogra/junk/alternate-webapp-container

This is a new approach using an alternate webapp container that
does not use a toolbar at the top but instead provides a bottom
menu with navigation objects. 

## TO DO

  * Add additional radial navigation for switching between Mobile and Non-Mobile mode.
    * No-Mobile - https://lastpass.com/?nomobile&ac=1&lpnorefresh=1
    * Mobile - https://lastpass.com/mobile/

## Building

Edit the value of `applicationName` at the top of `qml/Main.qml` to match
your application name to work around <https://launchpad.net/bugs/1435778>

Edit `config.js` to add `webappName`, `webappUrl` and `webappUrlPattern`
similar to how you would use them as commandline options to webapp-container.

Optionally you can set the `webappUA` variable in `config.js` to override
the User Agent string.

Edit the `.desktop` and `manifest.json` to your liking.

Replace icon.png with your own icon that is 128x128.

Now run:

    click build .

This will create a `.click` package with you webapp.

## Installing

Push the click to your device via adb, then:

    adb shell pkcon install-local --allow-untrusted /path/to/click

You will see a bunch of progress bars ... once they are done,
pull down the app scope to refresh it and find your new app in there.

## Publishing

Publish the generated click package at https://myapps.developer.ubuntu.com/dev/click-apps/
