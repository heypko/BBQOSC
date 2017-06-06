#BBQOSC#

A networked version of Hana Shin's BBQ piece for personal and/or ensemble performances, now with Mac, Windows, & Linux Support!

##Usage:##

###Server:###
Start BBQ_serverSELECT.ck in command-line or miniAudicle.

*'chuck BBQ_serverSELECT.ck'*

All audio will come through the server-side.

###Client:###
Start BBQ_clientSELECT.ck in command-line or miniAudicle with arguments

*'chuck BBQ_clientSELECT.ck:IP_ADDRESS:OS_TYPE:SPEAKER_NUMBER:KEYBOARD_HID'*

* IP_ADDRESS: IP address of machine where BBQ_serverSELECT.ck is running
* OS_TYPE: value of "mac" will change client keyset
* SPEAKER_NUMBER: 0-1 on a stereo setup
* KEYBOARD_HID (optional): May be different on linux machines, default 0

####Linux:####
For poor souls attempting to run this on linux, check your KEYBOARD_HID value by opening miniAudicle and hitting 'CTRL+2', then navigating to the HID section.

Example:
*'chuck BBQ_clientSELECT.ck:127.0.0.1:mac:0'*

Huge credit to Hana Shin: https://hanashinportfolio.wikispaces.com 
