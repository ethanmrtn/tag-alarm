# Tag Alarm
This is an open source application designed to allow people to setup alarms that can only be dismissed by scanning a specific NFC tag.

This is my first shipped iOS app, a lot of inspiration/guidance for this app was taken from the [foqos application](https://github.com/awaseem/foqos).

## How to use Tag Alarm
The first thing you’ll want to do is make sure that all the appropriate permissions are granted for the app. You can double check the status of these in the settings menu.

Make sure that you have some NFC tags ready, I use NTAG213 but I’m sure anything will work fine. If I’m advised otherwise, I’ll update the readme.

### Create an Alarm
Click on the create alarm button, from here you’ll be able to choose from all the usual settings for an alarm.

You’ll also notice that you can choose a dismissal strategy, if you leave this blank, it’ll default to the regular slide to dismiss that the native Clock app uses. If you add a dismissal strategy, you can also select the NFC dismissal strategy. This will prompt you to scan a NFC tag, once you scan this tag, when the alarm goes off, you’ll only be able to dismiss it by tapping your phone onto the tag.

### Dismissing an Alarm
If the alarm is setup to use the NFC dismissal strategy, when the alarm is sounding, you’ll have an option to dismiss, this will temporarily turn off the alarm, allowing you to scan the NFC tag in peace. If you don’t manage to scan the tag in 90 seconds, the alarm will start sounding again.

#### Backup Dismissal
Allow I haven’t ever had it happen, it does seem quite possible to me that an NFC Tag could be dismissed, or an alarm could accidentally go off when you’re out of your house. I can’t think of anyway to accommodate this scenario without ruining my personal use case for this app, so my advice would be just turn off your phone and turn it back on.

## How it works
