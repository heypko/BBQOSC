// launch as performer for BBQ_stereOSC

/*
    This IP needs to be changed
    to the address of the server
*/

// host name and port
"10.0.0.102" => string hostname;
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
0 => int deviceNum;

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
    hi => now;
    
    //get one or more messages
    while( hi.recv( msg ) )
    {
        // check for action type
        if( msg.isButtonDown() )
        {
            // start the message...
            xmit.start( "/sndbuf/bbq/number" );
            msg.which => int num => xmit.add;
            // send
            xmit.send();
            <<< "sent (via OSC):", num >>>;
        }
    }
}


