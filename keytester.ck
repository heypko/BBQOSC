// launch as performer for BBQ_stereOSC

/*
    This IP needs to bbqqbe changed
    to the address of the server
*/

// host name and port
"localhost" => string hostname;
6449 => int port;

// get command line
if( me.args() ) me.arg(0) => hostname;
if( me.args() > 1 ) me.arg(1) => Std.atoi => port;

// send object
OscOut xmit;

// aim the transmitter
xmit.dest( hostname, port );

/*
   This deviceNum needs
    to be changed per
          client
            |
            |
            V
*/

// the device number to open
11 => int deviceNum;

// instantiate a HidIn object
Hid hi;
//KBHit kb;

// structure to hold HID messages
HidMsg msg;

// open keyboard
if( !hi.openKeyboard( deviceNum ) ) me.exit();
// successful! print name of device
<<< "keyboard '", hi.name(), "' ready" >>>;

// infinite time loop
while( true )
{      
    20::ms => now;
    // start the message...
    xmit.start( "/sndbuf/bbq/number" );
    44 => xmit.add;
    // send
    xmit.send();
    
    
    // start the message...
    xmit.start( "/sndbuf/bbq/number" );
    45 => xmit.add;
    // send
    xmit.send();
}


