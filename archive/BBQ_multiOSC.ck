// launch as server for BBQ_client_w10.ckbbq

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


// 2 => int CHANNELS;

fun void playSighReverse() // a
{
    10 => int startPos;
    250 => int len;
    
    // a
    SndBuf sighReverse => ADSR e_sighReverse => Pan2 p_sighReverse => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/khaa.wav" => string fname;
    fname => sighReverse.read;
    0.7 => sighReverse.gain;
    1 => sighReverse.rate;
    Std.rand2f( -0.8, 0.8 ) => p_sighReverse.pan;
    e_sighReverse.set( 10::ms, 10::ms, 0.9, 100::ms );
    
    (startPos*44.100) $ int => sighReverse.pos;
    e_sighReverse.keyOn();
    len::ms => now;
    e_sighReverse.keyOff();
    10::ms => now;
}

fun void playBongo() // b
{
    0 => int startPos;
    500 => int len;
    
    // b 
    SndBuf bongo => ADSR e_bongo => Pan2 p_bongo => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/bongo.wav" => bongo.read;
    1. => bongo.gain;
    1.1 => bongo.rate;
    Std.rand2f( -0.8, 0 ) => p_bongo.pan;
    e_bongo.set( 10::ms, 10::ms, 0.6, 100::ms );
    
    (startPos*44.100) $ int => bongo.pos;
    e_bongo.keyOn();
    len::ms => now;
    e_bongo.keyOff();
    10::ms => now;
}

fun void playChoke() // c
{
    2600 => int startPos;
    100 => int len;
    
    // c 
    SndBuf choke => ADSR e_choke => Pan2 p_choke => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/choke.wav" => choke.read;
    0.4 => choke.gain;
    Std.rand2f( -0.8, 0.8 ) => p_choke.pan;
    e_choke.set( 10::ms, 10::ms, 0.9, 50::ms );
    
    (startPos*44.100) $ int => choke.pos;
    e_choke.keyOn();
    len::ms => now;
    e_choke.keyOff();
    10::ms => now;
}

fun void playDong() // d
{
    0 => int startPos;
    250 => int len;
    
    // d
    SndBuf dong => ADSR e_dong => Pan2 p_dong => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/drum_dong.wav" => dong.read;
    0.7 => dong.gain;
    0.9 => dong.rate;
    Std.rand2f( -0.8, 0.8 ) => p_dong.pan;
    e_dong.set( 20::ms, 30::ms, 0.8, 50::ms );
    
    (startPos*44.100) $ int => dong.pos;
    e_dong.keyOn();
    len::ms => now;
    e_dong.keyOff();
    10::ms => now;
}

fun void playBurp() // e
{
    200 => int startPos;
    80 => int len;
    
    // e
    SndBuf burp => ADSR e_burp => Pan2 p_burp => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/burp.wav" => burp.read;
    1 => burp.gain;
    Std.rand2f( -0.8, 0.8 ) => p_burp.pan;
    e_burp.set( 20::ms, 30::ms, 0.8, 50::ms );
    
    (startPos*44.100) $ int => burp.pos;
    e_burp.keyOn();
    len::ms => now;
    e_burp.keyOff();
    10::ms => now;
}

fun void playSteam() // f
{
    500 => int startPos;
    200 => int len;
    
    // f
    SndBuf steam => ADSR e_steam => Pan2 p_steam => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/steam.wav" => steam.read;
    9 => steam.gain;
    Std.rand2f( -0.8, 0.8 ) => p_steam.pan;
    e_steam.set( 100::ms, 1::ms, 0.9, 50::ms );
    
    (startPos*44.100) $ int => steam.pos;
    e_steam.keyOn();
    len::ms => now;
    e_steam.keyOff();
    10::ms => now;
}

fun void playDrag() // g
{
    210 => int startPos;
    80 => int len;
    
    // g
    SndBuf drag => ADSR e_drag => Pan2 p_drag => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/choke2.wav" => drag.read;
    1 => drag.gain;
    Std.rand2f( -0.8, 0.8 ) => p_drag.pan;
    e_drag.set( 100::ms, 1::ms, 0.9, 80::ms );
    
    (startPos*44.100) $ int => drag.pos;
    e_drag.keyOn();
    len::ms => now;
    e_drag.keyOff();
    10::ms => now;
}

fun void playSigh() // h
{
    250 => int startPos;
    150 => int len;
    
    // h
    SndBuf sigh => ADSR e_sigh => Pan2 p_sigh => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/sigh.wav" => sigh.read;
    1.2 => sigh.gain;
    Std.rand2f( -0.8, 0.8 ) => p_sigh.pan;
    e_sigh.set( 10::ms, 1::ms, 0.9, 80::ms );
    
    (startPos*44.100) $ int => sigh.pos;
    e_sigh.keyOn();
    len::ms => now;
    e_sigh.keyOff();
    10::ms => now;
}

fun void playWhee() // i
{
    150 => int startPos;
    150 => int len;
    
    // i
    SndBuf whee => ADSR e_whee => Pan2 p_whee => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/whee.wav" => whee.read;
    0.5 => whee.gain;
    Std.rand2f( -0.8, 0.8 ) => p_whee.pan;
    e_whee.set( 20::ms, 30::ms, 0.8, 50::ms );
    
    (startPos*44.100) $ int => whee.pos;
    e_whee.keyOn();
    len::ms => now;
    e_whee.keyOff();
    10::ms => now;
}

fun void playBoil() // j
{
    320 => int startPos;
    100 => int len;
    
    // j
    SndBuf boil => ADSR e_boil => Pan2 p_boil => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/boil.wav" => boil.read;
    1 => boil.gain;
    Std.rand2f( -0.8, 0.8 ) => p_boil.pan;
    e_boil.set( 30::ms, 10::ms, 0.8, 200::ms );
    
    (startPos*44.100) $ int => boil.pos;
    e_boil.keyOn();
    len::ms => now;
    e_boil.keyOff();
    10::ms => now;
}

fun void playBubbles() // l
{
    153 => int startPos;
    50 => int len;
    
    // l
    SndBuf bubbles => ADSR e_bubbles => Pan2 p_bubbles => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/bubbles.wav" => bubbles.read;
    3000 => bubbles.pos;
    1 => bubbles.gain;
    Std.rand2f( -0.8, 0.8 ) => p_bubbles.pan;
    e_bubbles.set( 30::ms, 1::ms, 1, 10::ms );
    
    (startPos*44.100) $ int => bubbles.pos;
    e_bubbles.keyOn();
    len::ms => now;
    e_bubbles.keyOff();
    10::ms => now;
}

fun void playMama() // m
{
    200 => int startPos;
    100 => int len;
    
    // m
    SndBuf mama => ADSR e_mama => Pan2 p_mama => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/mama.wav" => mama.read;
    1.5 => mama.gain;
    0.9 => mama.rate;
    Std.rand2f( -0.8, 0.8 ) => p_mama.pan;
    e_mama.set( 80::ms, 1::ms, 1, 20::ms );
    
    (startPos*44.100) $ int => mama.pos;
    e_mama.keyOn();
    len::ms => now;
    e_mama.keyOff();
    10::ms => now;
}

fun void playMeow() // n
{
    50 => int startPos;
    150 => int len;
    
    // n
    SndBuf meow_synth => ADSR e_meow_synth => Pan2 p_meow_synth => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/crying.wav" => meow_synth.read;
    4 => meow_synth.gain;
    0.8 => meow_synth.rate;
    Std.rand2f( -0.8, 0.8 ) => p_meow_synth.pan;
    e_meow_synth.set( 100::ms, 10::ms, 0.1, 50::ms );
    
    (startPos*44.100) $ int => meow_synth.pos;
    e_meow_synth.keyOn();
    len::ms => now;
    e_meow_synth.keyOff();
    10::ms => now;
}

fun void playTongue() // o
{
    620 => int startPos;
    100 => int len;
    
    // o
    SndBuf tongue => ADSR e_tongue => Pan2 p_tongue => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/tongue.wav" => tongue.read;
    1 => tongue.gain;
    Std.rand2f( -0.8, 0.8 ) => p_tongue.pan;
    e_tongue.set( 50::ms, 10::ms, 0.9, 10::ms );
    
    (startPos*44.100) $ int => tongue.pos;
    e_tongue.keyOn();
    len::ms => now;
    e_tongue.keyOff();
    10::ms => now;
}

fun void playPop() // p
{
    2450 => int startPos;
    50 => int len;
    
    // p
    SndBuf pop => ADSR e_pop => JCRev r => Pan2 p_pop => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/pop2.wav" => pop.read;
    0 => pop.pos;
    0.8 => pop.gain;
    0.01 => r.mix;
    Std.rand2f( -0.8, 0.8 ) => p_pop.pan;
    e_pop.set( 10::ms, 1::ms, 0.9, 10::ms );
    
    (startPos*44.100) $ int => pop.pos;
    e_pop.keyOn();
    len::ms => now;
    e_pop.keyOff();
    10::ms => now;
}

fun void playSqueak() // q
{
    1050 => int startPos;
    150 => int len;
    
    // q
    SndBuf squeak => ADSR e_squeak => Pan2 p_squeak => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/squeak.wav" => squeak.read;
    1 => squeak.gain;
    Std.rand2f( 0, 0.8 ) => p_squeak.pan;
    e_squeak.set( 10::ms, 1::ms, 0.9, 10::ms );
    
    (startPos*44.100) $ int => squeak.pos;
    e_squeak.keyOn();
    len::ms => now;
    e_squeak.keyOff();
    10::ms => now;
}

fun void playGrr() // r
{
    50 => int startPos;
    200 => int len;
    // r
    SndBuf grr => ADSR e_grr => Pan2 p_grr => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/grr.wav" => grr.read;
    0.8 => grr.gain;
    Std.rand2f( -0.8, 0.8 ) => p_grr.pan;
    e_grr.set( 100::ms, 10::ms, 0.9, 100::ms );

    
    (startPos*44.100) $ int => grr.pos;
    e_grr.keyOn();
    len::ms => now;
    e_grr.keyOff();
    10::ms => now;
}

fun void playWhisper() // s
{
    250 => int startPos;
    100 => int len;
    // s
    SndBuf whisper => ADSR e_whisper => Pan2 p_whisper => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/whisper.aiff" => whisper.read;
    8 => whisper.gain;
    Std.rand2f( -0.8, 0.8 ) => p_whisper.pan;
    e_whisper.set( 10::ms, 1::ms, 0.9, 10::ms );

    
    (startPos*44.100) $ int => whisper.pos;
    e_whisper.keyOn();
    len::ms => now;
    e_whisper.keyOff();
    10::ms => now;
}

fun void playSideStick() // t
{
    10 => int startPos;
    200 => int len;
    // t
    SndBuf sidestick => ADSR e_sidestick => Pan2 p_sidestick => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/drum_sideStick.wav" => sidestick.read;
    0.7 => sidestick.gain;
    Std.rand2f( -0.8, 0.8 ) => p_sidestick.pan;
    e_sidestick.set( 0::ms, 50::ms, 0.8, 150::ms );

    
    (startPos*44.100) $ int => sidestick.pos;
    e_sidestick.keyOn();
    len::ms => now;
    e_sidestick.keyOff();
    10::ms => now;
}


// u
//SndBuf alien => ADSR e_alien => Pan2 p_alien => dac;
//me.sourceDir() + "/alien.wav" => alien.read;
//0.8 => alien.gain;
//1.05 => alien.rate;
//Std.rand2f( -0.8, 0.8 ) => p_alien.pan;
//e_alien.set( 1::ms, 50::ms, 0.8, 100::ms );

fun void playAlien() // u
{
    100 => int startPos;
    70 => int len;
    SndBuf alien => ADSR e_alien => Pan2 p_alien => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/alien.wav" => alien.read;
    0.8 => alien.gain;
    1.05 => alien.rate;
    Std.rand2f( -0.8, 0.8 ) => p_alien.pan;
    e_alien.set( 1::ms, 50::ms, 0.8, 100::ms );
    
    (startPos*44.100) $ int => alien.pos;
    e_alien.keyOn();
    len::ms => now;
    e_alien.keyOff();
    10::ms => now;
}

// v
//SndBuf vroom => ADSR e_vroom => Pan2 p_vroom => dac;
//me.sourceDir() + "/vroom.wav" => vroom.read;
//0.8 => vroom.gain;
//Std.rand2f( -0.8, 0.8 ) => p_vroom.pan;
//e_vroom.set( 100::ms, 50::ms, 0.8, 100::ms );

fun void playVroom() // v
{
    6300 => int startPos;
    250 => int len;
    SndBuf vroom => ADSR e_vroom => Pan2 p_vroom => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/vroom.wav" => vroom.read;
    1 => vroom.gain;
    1.5 => vroom.rate;
    Std.rand2f( -0.8, 0.8 ) => p_vroom.pan;
    e_vroom.set( 50::ms, 50::ms, 0.9, 50::ms );
    
    (startPos*44.100) $ int => vroom.pos;
    e_vroom.keyOn();
    len::ms => now;
    e_vroom.keyOff();
    10::ms => now;
}

// w
//SndBuf monkey => ADSR e_monkey => Pan2 p_monkey => dac;
//me.sourceDir() + "/monkey.wav" => monkey.read;
//0.9 => monkey.gain;
//Std.rand2f( -0.8, 0.8 ) => p_monkey.pan;
//e_monkey.set( 10::ms, 1::ms, 0.9, 10::ms );

fun void playMonkey() // w
{
    8200 => int startPos;
    300 => int len;
    SndBuf monkey => ADSR e_monkey => Pan2 p_monkey => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/monkey.wav" => monkey.read;
    0.9 => monkey.gain;
    Std.rand2f( -0.8, 0.8 ) => p_monkey.pan;
    e_monkey.set( 10::ms, 1::ms, 0.9, 10::ms );
    
    (startPos*44.100) $ int => monkey.pos;
    e_monkey.keyOn();
    len::ms => now;
    e_monkey.keyOff();
    10::ms => now;
}

// y
//SndBuf boing => ADSR e_boing => Pan2 p_boing => dac;
//me.sourceDir() + "/boing.wav" => boing.read;
//1 => boing.gain;
//Std.rand2f( -0.8, 0.8 ) => p_boing.pan;
//e_boing.set( 5::ms, 50::ms, 0.9, 80::ms );

fun void playBoing() // y
{
    20 => int startPos;
    240 => int len;
    SndBuf boing => ADSR e_boing => Pan2 p_boing => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/boing.wav" => boing.read;
    1 => boing.gain;
    Std.rand2f( -0.8, 0.8 ) => p_boing.pan;
    e_boing.set( 5::ms, 50::ms, 0.9, 80::ms );
    
    (startPos*44.100) $ int => boing.pos;
    e_boing.keyOn();
    len::ms => now;
    e_boing.keyOff();
    10::ms => now;
}

// z
//SndBuf buzz => ADSR e_buzz => Pan2 p_buzz => dac;
//me.sourceDir() + "/buzz.wav" => buzz.read;
//1 => buzz.gain;
//1.5 => buzz.rate;
//Std.rand2f( -0.8, 0.8 ) => p_buzz.pan;
//e_buzz.set( 50::ms, 50::ms, 0.9, 50::ms );

fun void playBuzz() // z
{
    700 => int startPos;
    140 => int len;
    SndBuf buzz => ADSR e_buzz => Pan2 p_buzz => dac.chan(Std.rand2(2,9));
    me.sourceDir() + "/buzz.wav" => buzz.read;
    1 => buzz.gain;
    1.5 => buzz.rate;
    Std.rand2f( -0.8, 0.8 ) => p_buzz.pan;
    e_buzz.set( 50::ms, 50::ms, 0.9, 50::ms );
    
    (startPos*44.100) $ int => buzz.pos;
    e_buzz.keyOn();
    len::ms => now;
    e_buzz.keyOff();
    10::ms => now;
}


fun void play( SndBuf sample, int startPos, ADSR env, int len ) // in ms
{
    (startPos*44.100) $ int => sample.pos;
    env.keyOn();
    len::ms => now;
    env.keyOff();
    10::ms => now;
}



// create our OSC receiver
OscIn oin;
// create our OSC message
OscMsg msg;
// use port 6449
6449 => oin.port;
// create an address in the receiver
oin.addAddress( "/sndbuf/bbq/number, i" );


// infinite event loop
while( true )
{       
    // wait for event to arrive
    oin => now;

    // grab the next message from the queue. 
    while ( oin.recv(msg) != 0 )
    {   
        // getFloat fetches the expected float (as indicated by "f")
        msg.getInt(0) => int which;
        // print
        <<< "parsing (via OSC):", which >>>;
        // pass to player
        parseKeys( which );
    }
}

// function that parses keyboard presses 
fun void parseKeys( int which )
{
    // match numbers to letters and increment the appropriate layer variable 
    if( which == 30 ) // a
        spork ~playSighReverse();
    else if( which == 48 ) // b
        spork ~playBongo();
    else if( which == 46 ) // c
        spork ~playChoke();
    else if( which == 32 ) // d
        spork ~playDong();
    else if( which == 18 ) // e
        spork ~playBurp();
    else if( which == 33 ) // f
        spork ~playSteam();
    else if( which == 34 ) // g
        spork ~playDrag();
    else if( which == 35 ) // h
        spork ~playSigh();
    else if( which == 23 ) // i
        spork ~playWhee();
    else if( which == 36 ) // j
        spork ~playBoil();
    else if( which == 38 ) // l
        spork ~playBubbles();
    else if( which == 50 ) // m
        spork ~playMama();
    else if( which == 49 ) // n
        spork ~playMeow();
    else if( which == 24 ) // o
        spork ~playTongue();
    else if( which == 25 ) // p
        spork ~playPop();
    else if( which == 16 ) // q
        spork ~playSqueak();
    else if( which == 19 ) // r
        spork ~playGrr();
    else if( which == 31 ) // s
        spork ~playWhisper();
    else if( which == 20 ) // t
        spork ~playSideStick();
    else if( which == 22 ) // u
        spork ~playAlien();
    else if( which == 47 ) // v
        spork ~playVroom();
    else if( which == 17 ) // w
        spork ~playMonkey();
    else if( which == 21 ) // y
        spork ~playBoing();
    else if( which == 44 ) // z
        spork ~playBuzz();
}