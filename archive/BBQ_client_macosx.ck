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
 			// msg.which => int num => xmit.add;

			// Translate mac key presses to EVERYTHING ELSE
			parseMac(msg.which) => int num;

    
			// Add translated keypress to packet
			num => xmit.add;

            // send
            xmit.send();
            <<< "sent (via OSC):", num >>>;
        }
    }
}

fun int parseMac( int which )
{
    int num;
    if( which == 4 ) // a
		30 => num;
    else if( which == 5 ) // b
		48 => num;
    else if( which == 6 ) // c
		46 => num;
    else if( which == 7 ) // d
		32 => num;
    else if( which == 8 ) // e
		18 => num;
    else if( which == 9 ) // f
		33 => num;
    else if( which == 10 ) // g
		34 => num;
    else if( which == 11 ) // h
		35 => num;
    else if( which == 12 ) // i
		23 => num;
    else if( which == 13 ) // j
		36 => num;
    else if( which == 15 ) // l
		38 => num;
    else if( which == 16 ) // m
		50 => num;
    else if( which == 17 ) // n
		49 => num;
    else if( which == 18 ) // o
		24 => num;
    else if( which == 19 ) // p
		25 => num;
    else if( which == 20 ) // q
		16 => num;
    else if( which == 21 ) // r
		19 => num;
    else if( which == 22 ) // s
		31 => num;
    else if( which == 23 ) // t
		20 => num;
    else if( which == 24 ) // u
		22 => num;
    else if( which == 25 ) // v
		47 => num;
    else if( which == 26 ) // w
		17 => num;
    else if( which == 28 ) // y
		21 => num;
    else if( which == 29 ) // z
		44 => num;
    else if( which == 54 ) // ,
		51 => num;
    else if( which == 55 ) // .
		52 => num;
    else if( which == 56 ) // /
		53 => num;

    return num;
}


