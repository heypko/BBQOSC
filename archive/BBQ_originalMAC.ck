// BBQ by Hana Shin
// 2014

// b,,b,,q, b,,b,,q, b,,b,,q, b,,b,,q, 
// b,spamq b,spamq b,spamq b,spamg bv,szzw
// bdot,ms bdot,ms bdot,ms bdoamar
// bdty,,a, bdtyhha, bdt,bdt, ffszvcp,
// bdtfsi,, bdtfsiu, b,ssvj,, dahda,a,
// blop,op, blop,op, blop,op, bloblop, 
// boing,,, sponcc,, bswqjspf bahsz,,,

// rahrah,,roar,rr,r,grr,roar,ra
// rahrah,,roar,rr,r,grr,roar,rah
// lollpop, lollipop lollpop, lollpom,
// munch,y, munchii, munomnom umnumnua 
// wumpow,, wum,now, wumpowp lollpur
// s,snap,, oshnaps, popsloc, snapz
// zz,sfaz, zz,asazz ,asfzza, shizzle

// b,,b,,q, b,,b,,q, b,,b,,q, b,,b,,q, 
// b,,b qii, b,,b qui b,uibuy tstsha,, 
// b,sizzle b,sizzle b,sizzle shizip,, a


2 => int CHANNELS;

// a
SndBuf sighReverse => ADSR e_sighReverse => Pan2 p_sighReverse => dac;
"khaa.wav" => sighReverse.read;
//1024 => sighReverse.chunks;
0.7 => sighReverse.gain;
1 => sighReverse.rate;
Std.rand2f( -0.8, 0.8 ) => p_sighReverse.pan;
e_sighReverse.set( 10::ms, 10::ms, 0.9, 100::ms );

// b 
SndBuf bongo => ADSR e_bongo => Pan2 p_bongo => dac;
"bongo.wav" => bongo.read;
//1024 => bongo.chunks;
1. => bongo.gain;
1.1 => bongo.rate;
Std.rand2f( -0.8, 0 ) => p_bongo.pan;
e_bongo.set( 10::ms, 10::ms, 0.6, 100::ms );

// c 
SndBuf choke => ADSR e_choke => Pan2 p_choke => dac;
"choke.wav" => choke.read;
//1024 => choke.chunks;
0.4 => choke.gain;
Std.rand2f( -0.8, 0.8 ) => p_choke.pan;
e_choke.set( 10::ms, 10::ms, 0.9, 50::ms );

// d
SndBuf dong => ADSR e_dong => Pan2 p_dong => dac;
"drum_dong.wav" => dong.read;
//1024 => dong.chunks;
0.7 => dong.gain;
0.9 => dong.rate;
Std.rand2f( -0.8, 0.8 ) => p_dong.pan;
e_dong.set( 20::ms, 30::ms, 0.8, 50::ms );

// e
SndBuf burp => ADSR e_burp => Pan2 p_burp => dac;
"burp.wav" => burp.read;
//1024 => burp.chunks;
1 => burp.gain;
Std.rand2f( -0.8, 0.8 ) => p_burp.pan;
e_burp.set( 20::ms, 30::ms, 0.8, 50::ms );

// f
SndBuf steam => ADSR e_steam => Pan2 p_steam => dac;
"steam.wav" => steam.read;
//1024 => steam.chunks;
9 => steam.gain;
Std.rand2f( -0.8, 0.8 ) => p_steam.pan;
e_steam.set( 100::ms, 1::ms, 0.9, 50::ms );

// g
SndBuf drag => ADSR e_drag => Pan2 p_drag => dac;
"choke2.wav" => drag.read;
//1024 => drag.chunks;
1 => drag.gain;
Std.rand2f( -0.8, 0.8 ) => p_drag.pan;
e_drag.set( 100::ms, 1::ms, 0.9, 80::ms );

// h
SndBuf sigh => ADSR e_sigh => Pan2 p_sigh => dac;
"sigh.wav" => sigh.read;
//1024 => sigh.chunks;
1.2 => sigh.gain;
Std.rand2f( -0.8, 0.8 ) => p_sigh.pan;
e_sigh.set( 10::ms, 1::ms, 0.9, 80::ms );

// i
SndBuf whee => ADSR e_whee => Pan2 p_whee => dac;
"whee.wav" => whee.read;
//1024 => whee.chunks;
0.5 => whee.gain;
Std.rand2f( -0.8, 0.8 ) => p_whee.pan;
e_whee.set( 20::ms, 30::ms, 0.8, 50::ms );

// j
SndBuf boil => ADSR e_boil => Pan2 p_boil => dac;
"boil.wav" => boil.read;
//1024 => boil.chunks;
1 => boil.gain;
Std.rand2f( -0.8, 0.8 ) => p_boil.pan;
e_boil.set( 30::ms, 10::ms, 0.8, 200::ms );

// l
SndBuf bubbles => ADSR e_bubbles => Pan2 p_bubbles => dac;
"bubbles.wav" => bubbles.read;
//1024 => bubbles.chunks;
3000 => bubbles.pos;
1 => bubbles.gain;
Std.rand2f( -0.8, 0.8 ) => p_bubbles.pan;
e_bubbles.set( 30::ms, 1::ms, 1, 10::ms );

// m
SndBuf mama => ADSR e_mama => Pan2 p_mama => dac;
"mama.wav" => mama.read;
//1024 => mama.chunks;
1.5 => mama.gain;
0.9 => mama.rate;
Std.rand2f( -0.8, 0.8 ) => p_mama.pan;
e_mama.set( 80::ms, 1::ms, 1, 20::ms );

// n
SndBuf meow_synth => ADSR e_meow_synth => Pan2 p_meow_synth => dac;
"crying.wav" => meow_synth.read;
//1024 => meow_synth.chunks;
4 => meow_synth.gain;
0.8 => meow_synth.rate;
Std.rand2f( -0.8, 0.8 ) => p_meow_synth.pan;
e_meow_synth.set( 100::ms, 10::ms, 0.1, 50::ms );

// o
SndBuf tongue => ADSR e_tongue => Pan2 p_tongue => dac;
"tongue.wav" => tongue.read;
//1024 => tongue.chunks;
1 => tongue.gain;
Std.rand2f( -0.8, 0.8 ) => p_tongue.pan;
e_tongue.set( 50::ms, 10::ms, 0.9, 10::ms );

// p
SndBuf pop => ADSR e_pop => JCRev r => Pan2 p_pop => dac;
"pop2.wav" => pop.read;
//1024 => pop.chunks;
0 => pop.pos;
0.8 => pop.gain;
0.01 => r.mix;
Std.rand2f( -0.8, 0.8 ) => p_pop.pan;
e_pop.set( 10::ms, 1::ms, 0.9, 10::ms );

// q
SndBuf squeak => ADSR e_squeak => Pan2 p_squeak => dac;
"squeak.wav" => squeak.read;
//1024 => squeak.chunks;
1 => squeak.gain;
Std.rand2f( 0, 0.8 ) => p_squeak.pan;
e_squeak.set( 10::ms, 1::ms, 0.9, 10::ms );

// r
SndBuf grr => ADSR e_grr => Pan2 p_grr => dac;
"grr.wav" => grr.read;
//1024 => grr.chunks;
0.8 => grr.gain;
Std.rand2f( -0.8, 0.8 ) => p_grr.pan;
e_grr.set( 100::ms, 10::ms, 0.9, 100::ms );

// s
SndBuf whisper => ADSR e_whisper => Pan2 p_whisper => dac;
"whisper.aiff" => whisper.read;
//1024 => whisper.chunks;
8 => whisper.gain;
Std.rand2f( -0.8, 0.8 ) => p_whisper.pan;
e_whisper.set( 10::ms, 1::ms, 0.9, 10::ms );

// t
SndBuf sidestick => ADSR e_sidestick => Pan2 p_sidestick => dac;
"drum_sideStick.wav" => sidestick.read;
//1024 => sidestick.chunks;
0.7 => sidestick.gain;
Std.rand2f( -0.8, 0.8 ) => p_sidestick.pan;
e_sidestick.set( 0::ms, 50::ms, 0.8, 150::ms );

// u
SndBuf alien => ADSR e_alien => Pan2 p_alien => dac;
"alien.wav" => alien.read;
//1024 => alien.chunks;
0.8 => alien.gain;
1.05 => alien.rate;
Std.rand2f( -0.8, 0.8 ) => p_alien.pan;
e_alien.set( 1::ms, 50::ms, 0.8, 100::ms );

// v
SndBuf vroom => ADSR e_vroom => Pan2 p_vroom => dac;
"vroom.wav" => vroom.read;
//1024 => vroom.chunks;
0.8 => vroom.gain;
Std.rand2f( -0.8, 0.8 ) => p_vroom.pan;
e_vroom.set( 100::ms, 50::ms, 0.8, 100::ms );

// w
SndBuf monkey => ADSR e_monkey => Pan2 p_monkey => dac;
"monkey.wav" => monkey.read;
//1024 => monkey.chunks;
0.9 => monkey.gain;
Std.rand2f( -0.8, 0.8 ) => p_monkey.pan;
e_monkey.set( 10::ms, 1::ms, 0.9, 10::ms );

// y
SndBuf boing => ADSR e_boing => Pan2 p_boing => dac;
"boing.wav" => boing.read;
//1024 => boing.chunks;
1 => boing.gain;
Std.rand2f( -0.8, 0.8 ) => p_boing.pan;
e_boing.set( 5::ms, 50::ms, 0.9, 80::ms );

// z
SndBuf buzz => ADSR e_buzz => Pan2 p_buzz => dac;
"buzz.wav" => buzz.read;
//1024 => buzz.chunks;
1 => buzz.gain;
1.5 => buzz.rate;
Std.rand2f( -0.8, 0.8 ) => p_buzz.pan;
e_buzz.set( 50::ms, 50::ms, 0.9, 50::ms );



spork ~keyboard();
1::hour => now;


fun void play( SndBuf sample, int startPos, ADSR env, int len ) // in ms
{
    (startPos*44.100) $ int => sample.pos;
    env.keyOn();
    len::ms => now;
    env.keyOff();
    10::ms => now;
}


// function that receives keyboard input (courtesy of S.M.E.L.T.) 
fun void keyboard()
{
    // the device number to open
    0 => int deviceNum;
    
    // instantiate a HidIn object
    Hid hi;
    // structure to hold HID messages
    HidMsg msg;
    
    // open keyboard
    if( !hi.openKeyboard( deviceNum ) ) me.exit();
    // successful! print name of device
    <<< "keyboard '", hi.name(), "' ready" >>>;
    
    // infinite event loop
    while( true )
    {
        // wait on event
        hi => now;
        
        // get one or more messages
        while( hi.recv( msg ) )
        {
            // check for action type
            if( msg.isButtonDown() )
            {
                <<< "down:", msg.which >>>;
                // send key information to a parsing function
                parseKeys( msg.which );
            }
            else
            {
                //<<< "up:", msg.which >>>;
            }
        }
    }
}

// function that parses keyboard presses 
fun void parseKeys( int which )
{
    // match numbers to letters and increment the appropriate layer variable 
    if( which == 4 ) // a
        spork ~play( sighReverse, 10, e_sighReverse, 250 );
    else if( which == 5 ) // b
        spork ~play( bongo, 0, e_bongo, 500 );
    else if( which == 6 ) // c
        spork ~play( choke, 2600, e_choke, 100 );
    else if( which == 7 ) // d
        spork ~play( dong, 0, e_dong, 250 );
    else if( which == 8 ) // e
        spork ~play( burp, 200, e_burp, 80 );
    else if( which == 9 ) // f
        spork ~play( steam, 500, e_steam, 200 );
    else if( which == 10 ) // g
        spork ~play( drag, 210, e_drag, 80 );
    else if( which == 11 ) // h
        spork ~play( sigh, 250, e_sigh, 150 ); 
    else if( which == 12 ) // i
        spork ~play( whee, 150, e_whee, 150 );
    else if( which == 13 ) // j
        spork ~play( boil, 320, e_boil, 100 );
    else if( which == 15 ) // l
        spork ~play( bubbles, 153, e_bubbles, 50 );
    else if( which == 16 ) // m
        spork ~play( mama, 200, e_mama, 100 );
    else if( which == 17 ) // n
        spork ~play( meow_synth, 50, e_meow_synth, 150 );
    else if( which == 18 ) // o
        spork ~play( tongue, 620, e_tongue, 100 );
    else if( which == 19 ) // p
        spork ~play( pop, 2450, e_pop, 50 );
    else if( which == 20 ) // q
        spork ~play( squeak, 1050, e_squeak, 150 );
    else if( which == 21 ) // r
        spork ~play( grr, 50, e_grr, 200 );
    else if( which == 22 ) // s
        spork ~play( whisper, 250, e_whisper, 100 );
    else if( which == 23 ) // t
        spork ~play( sidestick, 10, e_sidestick, 200 );
    else if( which == 24 ) // u
        spork ~play( alien, 100, e_alien, 70 );
    else if( which == 25 ) // v
        spork ~play (vroom, 6300, e_vroom, 250 );
    else if( which == 26 ) // w
        spork ~play( monkey, 8200, e_monkey, 300 );
    else if( which == 28 ) // y
        spork ~play( boing, 20, e_boing, 240 );
    else if( which == 29 ) // z
        spork ~play( buzz, 700, e_buzz, 140 );
}