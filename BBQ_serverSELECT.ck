// launch as server for BBQ_client_w10.ckbbq

// BBQ by Hana Shin
// 2014

// b,,b,,q, b,,b,,q, b,,b,,q, b,,b,,q,
// b,spamq b,spamq b,spamq b,spamg bv,szzw
// bdot,ms bdot,ms bdot,ms bdoamar
// bdty,,a, bdtyhha, bdt,bdt, ffszvcp,
// bdtfsi,, bdtfsiu, b,ssvj,, dahda,a,
// blop,op, blop,op, blop,op, bloblop,
// sndbufArray[sbc],,, sponcc,, bswqjspf bahsz,,,

// rahrah,,roar,rr,r,grr,roar,ra
// rahrah,,roar,rr,r,grr,roar,rah
// lollpop lollipoplollpop lollpom
// lollpop lollipoploll
// munch,y, munchii, munomnom umnumnua

// wumpow,, wum,now, wumpowp lollpur
// s,snap,, oshnaps, sndbufArray[sbc]sloc, snapz
// zz,sfaz, zz,asazz ,asfzza, shizzle

// b,,b,,q, b,,b,,q, b,,b,,q, b,,b,,q,
// b,,b qii, b,,b qui b,uibuy tstsha,,
// b,sizzle b,sizzle b,sizzle shizip,, a

0 => int startCHAN;                 // Audio Channel Start Index
1 => int endCHAN;                   // Audio Channel End Index

endCHAN - startCHAN + 1 => int CHANRange;
0 => int addCHAN;
(addCHAN % CHANRange) + startCHAN => int finalCHAN;

0 => int sbc;                       // sndbufArray Counter
100 => int instanceCount;           // size of sndbufArray
SndBuf sndbufArray[instanceCount];  // Initialize sndbufArray

fun void playSighReverse() // a
{
    10 => int startPos;
    250 => int len;

    <<<"finalCHAN = " + finalCHAN>>>;
    (addCHAN % CHANRange) + startCHAN => int finalCHAN;


    // a
    sndbufArray[sbc] => ADSR e_sighReverse => Pan2 p_sighReverse => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/khaa.wav" => string fname;
    fname => sndbufArray[sbc].read;
    0.7 => sndbufArray[sbc].gain;
    1 => sndbufArray[sbc].rate;
    e_sighReverse.set( 10::ms, 10::ms, 0.9, 100::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_sighReverse.keyOn();
    len::ms => now;
    e_sighReverse.keyOff();
    10::ms => now;
}

fun void playBongo() // b
{
    0 => int startPos;
    1000 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // bongo
    sndbufArray[sbc] => ADSR e_bongo => Pan2 p_bongo => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/bongo.wav" => sndbufArray[sbc].read;
    1. => sndbufArray[sbc].gain;
    1.1 => sndbufArray[sbc].rate;
    e_bongo.set( 10::ms, 10::ms, 0.6, 100::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_bongo.keyOn();
    len::ms => now;
    e_bongo.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_bongo;
    e_bongo =< p_bongo;
    p_bongo =< dac;


}

fun void playChoke() // c
{
    2600 => int startPos;
    100 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // c
    sndbufArray[sbc] => ADSR e_choke => Pan2 p_choke => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/choke.wav" => sndbufArray[sbc].read;
    0.4 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    e_choke.set( 10::ms, 10::ms, 0.9, 50::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_choke.keyOn();
    len::ms => now;
    e_choke.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_choke;
    e_choke =< p_choke;
    p_choke =< dac;
}

fun void playDong() // d
{
    0 => int startPos;
    250 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // d
    sndbufArray[sbc] => ADSR e_dong => Pan2 p_dong => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/drum_dong.wav" => sndbufArray[sbc].read;
    0.7 => sndbufArray[sbc].gain;
    0.9 => sndbufArray[sbc].rate;
    e_dong.set( 20::ms, 30::ms, 0.8, 50::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_dong.keyOn();
    len::ms => now;
    e_dong.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_dong;
    e_dong =< p_dong;
    p_dong =< dac;
}

fun void playBurp() // e
{
    200 => int startPos;
    80 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // e
    sndbufArray[sbc] => ADSR e_burp => Pan2 p_burp => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/burp.wav" => sndbufArray[sbc].read;
    1 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    e_burp.set( 20::ms, 30::ms, 0.8, 50::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_burp.keyOn();
    len::ms => now;
    e_burp.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_burp;
    e_burp =< p_burp;
    p_burp =< dac;
}

fun void playSteam() // f
{
    500 => int startPos;
    200 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // f
    sndbufArray[sbc] => ADSR e_steam => Pan2 p_steam => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/steam.wav" => sndbufArray[sbc].read;
    9 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    e_steam.set( 100::ms, 1::ms, 0.9, 50::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_steam.keyOn();
    len::ms => now;
    e_steam.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_steam;
    e_steam =< p_steam;
    p_steam =< dac;
}

fun void playDrag() // g
{
    210 => int startPos;
    80 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // g
    sndbufArray[sbc] => ADSR e_drag => Pan2 p_drag => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/choke2.wav" => sndbufArray[sbc].read;
    1 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    e_drag.set( 100::ms, 1::ms, 0.9, 80::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_drag.keyOn();
    len::ms => now;
    e_drag.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_drag;
    e_drag =< p_drag;
    p_drag =< dac;
}

fun void playSigh() // h
{
    250 => int startPos;
    150 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // h
    sndbufArray[sbc] => ADSR e_sigh => Pan2 p_sigh => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/sigh.wav" => sndbufArray[sbc].read;
    1.2 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    e_sigh.set( 10::ms, 1::ms, 0.9, 80::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_sigh.keyOn();
    len::ms => now;
    e_sigh.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_sigh;
    e_sigh =< p_sigh;
    p_sigh =< dac;
}

fun void playWhee() // i
{
    150 => int startPos;
    150 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // i
    sndbufArray[sbc] => ADSR e_whee => Pan2 p_whee => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/whee.wav" => sndbufArray[sbc].read;
    0.5 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    e_whee.set( 20::ms, 30::ms, 0.8, 50::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_whee.keyOn();
    len::ms => now;
    e_whee.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_whee;
    e_whee =< p_whee;
    p_whee =< dac;
}

fun void playBoil() // j
{
    320 => int startPos;
    100 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // j
    sndbufArray[sbc] => ADSR e_boil => Pan2 p_boil => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/boil.wav" => sndbufArray[sbc].read;
    1 => sndbufArray[sbc].gain;
    e_boil.set( 30::ms, 10::ms, 0.8, 200::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_boil.keyOn();
    len::ms => now;
    e_boil.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_boil;
    e_boil =< p_boil;
    p_boil =< dac;
}

fun void play808() // k
{
    0 => int startPos;
    700 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // j
    sndbufArray[sbc] => ADSR e_808 => Pan2 p_808 => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/808.wav" => sndbufArray[sbc].read;
    1.5 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    e_808.set( 10::ms, 10::ms, 0.6, 100::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_808.keyOn();
    len::ms => now;
    e_808.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_808;
    e_808 =< p_808;
    p_808 =< dac;
}

fun void playBubbles() // l
{
    153 => int startPos;
    50 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // l
    sndbufArray[sbc] => ADSR e_bubbles => Pan2 p_bubbles => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/bubbles.wav" => sndbufArray[sbc].read;
    3000 => sndbufArray[sbc].pos;
    1 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    e_bubbles.set( 30::ms, 1::ms, 1, 10::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_bubbles.keyOn();
    len::ms => now;
    e_bubbles.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_bubbles;
    e_bubbles =< p_bubbles;
    p_bubbles =< dac;
}

fun void playMama() // m
{
    200 => int startPos;
    100 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // m
    sndbufArray[sbc] => ADSR e_mama => Pan2 p_mama => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/mama.wav" => sndbufArray[sbc].read;
    1.5 => sndbufArray[sbc].gain;
    0.9 => sndbufArray[sbc].rate;
    e_mama.set( 80::ms, 1::ms, 1, 20::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_mama.keyOn();
    len::ms => now;
    e_mama.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_mama;
    e_mama =< p_mama;
    p_mama =< dac;
}

fun void playMeow() // n
{
    50 => int startPos;
    150 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // n
    sndbufArray[sbc] => ADSR e_meow_synth => Pan2 p_meow_synth => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/crying.wav" => sndbufArray[sbc].read;
    4 => sndbufArray[sbc].gain;
    0.8 => sndbufArray[sbc].rate;
    e_meow_synth.set( 100::ms, 10::ms, 0.1, 50::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_meow_synth.keyOn();
    len::ms => now;
    e_meow_synth.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_meow_synth;
    e_meow_synth =< p_meow_synth;
    p_meow_synth =< dac;
}

fun void playTongue() // o
{
    620 => int startPos;
    100 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // o
    sndbufArray[sbc] => ADSR e_tongue => Pan2 p_tongue => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/tongue.wav" => sndbufArray[sbc].read;
    1 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    e_tongue.set( 50::ms, 10::ms, 0.9, 10::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_tongue.keyOn();
    len::ms => now;
    e_tongue.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_tongue;
    e_tongue =< p_tongue;
    p_tongue =< dac;
}

fun void playPop() // p
{
    2450 => int startPos;
    50 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // p
    sndbufArray[sbc] => ADSR e_pop => JCRev r => Pan2 p_pop => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/pop2.wav" => sndbufArray[sbc].read;
    0 => sndbufArray[sbc].pos;
    0.5 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    0.01 => r.mix;
    e_pop.set( 10::ms, 1::ms, 0.9, 10::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_pop.keyOn();
    len::ms => now;
    e_pop.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_pop;
    e_pop =< p_pop;
    p_pop =< dac;
}

fun void playSqueak() // q
{
    1050 => int startPos;
    150 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // q
    sndbufArray[sbc] => ADSR e_squeak => Pan2 p_squeak => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/squeak.wav" => sndbufArray[sbc].read;
    1 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    e_squeak.set( 10::ms, 1::ms, 0.9, 10::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_squeak.keyOn();
    len::ms => now;
    e_squeak.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_squeak;
    e_squeak =< p_squeak;
    p_squeak =< dac;
}

fun void playGrr() // r
{
    50 => int startPos;
    200 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // r
    sndbufArray[sbc] => ADSR e_grr => Pan2 p_grr => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/grr.wav" => sndbufArray[sbc].read;
    0.5 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    e_grr.set( 100::ms, 10::ms, 0.9, 100::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_grr.keyOn();
    len::ms => now;
    e_grr.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_grr;
    e_grr =< p_grr;
    p_grr =< dac;
}

fun void playWhisper() // s
{
    250 => int startPos;
    100 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // s
    sndbufArray[sbc] => ADSR e_whisper => Pan2 p_whisper => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/whisper.aiff" => sndbufArray[sbc].read;
    8 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    e_whisper.set( 10::ms, 1::ms, 0.9, 10::ms );


    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_whisper.keyOn();
    len::ms => now;
    e_whisper.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_whisper;
    e_whisper =< p_whisper;
    p_whisper =< dac;
}

fun void playSideStick() // t
{
    10 => int startPos;
    200 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // t
    sndbufArray[sbc] => ADSR e_sidestick => Pan2 p_sidestick => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/drum_sideStick.wav" => sndbufArray[sbc].read;
    0.7 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    e_sidestick.set( 0::ms, 50::ms, 0.8, 150::ms );


    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_sidestick.keyOn();
    len::ms => now;
    e_sidestick.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_sidestick;
    e_sidestick =< p_sidestick;
    p_sidestick =< dac;
}

fun void playAlien() // u
{
    100 => int startPos;
    70 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // u
    sndbufArray[sbc] => ADSR e_alien => Pan2 p_alien => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/alien.wav" => sndbufArray[sbc].read;
    0.8 => sndbufArray[sbc].gain;
    1.05 => sndbufArray[sbc].rate;
    e_alien.set( 1::ms, 50::ms, 0.8, 100::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_alien.keyOn();
    len::ms => now;
    e_alien.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_alien;
    e_alien =< p_alien;
    p_alien =< dac;
}

fun void playVroom() // v
{
    6300 => int startPos;
    250 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // v
    sndbufArray[sbc] => ADSR e_vroom => Pan2 p_vroom => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/vroom.wav" => sndbufArray[sbc].read;
    1 => sndbufArray[sbc].gain;
    1.5 => sndbufArray[sbc].rate;
    e_vroom.set( 50::ms, 50::ms, 0.9, 50::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_vroom.keyOn();
    len::ms => now;
    e_vroom.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_vroom;
    e_vroom =< p_vroom;
    p_vroom =< dac;
}

fun void playMonkey() // w
{
    8200 => int startPos;
    300 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // w
    sndbufArray[sbc] => ADSR e_monkey => Pan2 p_monkey => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/monkey.wav" => sndbufArray[sbc].read;
    0.3 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    e_monkey.set( 10::ms, 1::ms, 0.9, 10::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_monkey.keyOn();
    len::ms => now;
    e_monkey.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_monkey;
    e_monkey =< p_monkey;
    p_monkey =< dac;
}

fun void playBoing() // y
{
    20 => int startPos;
    240 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // y
    sndbufArray[sbc] => ADSR e_boing => Pan2 p_boing => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/boing.wav" => sndbufArray[sbc].read;
    .4 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    e_boing.set( 5::ms, 50::ms, 0.9, 80::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_boing.keyOn();
    len::ms => now;
    e_boing.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_boing;
    e_boing =< p_boing;
    p_boing =< dac;
}

fun void playBuzz() // z
{
    700 => int startPos;
    140 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    // z
    sndbufArray[sbc] => ADSR e_buzz => Pan2 p_buzz => dac.chan(finalCHAN);
    me.sourceDir() + "/sounds/buzz.wav" => sndbufArray[sbc].read;
    1 => sndbufArray[sbc].gain;
    1.5 => sndbufArray[sbc].rate;
    e_buzz.set( 50::ms, 50::ms, 0.9, 50::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_buzz.keyOn();
    len::ms => now;
    e_buzz.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_buzz;
    e_buzz =< p_buzz;
    p_buzz =< dac;
}

fun void playLight() // ,
{
    0 => int startPos;
    500 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    sndbufArray[sbc] => ADSR e_light => Pan2 p_light => dac.chan(finalCHAN);
    me.sourceDir() + "SE031.wav" => sndbufArray[sbc].read;
    0.3 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    Std.rand2f( -0.8, 0.8 ) => p_light.pan;
    e_light.set( 10::ms, 1::ms, 0.9, 10::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_light.keyOn();
    len::ms => now;
    e_light.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_light;
    e_light =< p_light;
    p_light =< dac;

}

fun void playMedium() // .
{
    0 => int startPos;
    500 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    sndbufArray[sbc] => ADSR e_medium => Pan2 p_medium => dac.chan(finalCHAN);
    me.sourceDir() + "SE032.wav" => sndbufArray[sbc].read;
    0.3 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    Std.rand2f( -0.8, 0.8 ) => p_medium.pan;
    e_medium.set( 10::ms, 1::ms, 0.9, 10::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_medium.keyOn();
    len::ms => now;
    e_medium.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_medium;
    e_medium =< p_medium;
    p_medium =< dac;
}

fun void playHeavy() // .
{
    50 => int startPos;
    500 => int len;

    (addCHAN % CHANRange) + startCHAN => int finalCHAN;

    sndbufArray[sbc] => ADSR e_heavy => Pan2 p_heavy => dac.chan(finalCHAN);
    me.sourceDir() + "SE033.wav" => sndbufArray[sbc].read;
    0.3 => sndbufArray[sbc].gain;
    1.0 => sndbufArray[sbc].rate;
    Std.rand2f( -0.8, 0.8 ) => p_heavy.pan;
    e_heavy.set( 10::ms, 1::ms, 0.9, 10::ms );

    (startPos*44.100) $ int => sndbufArray[sbc].pos;
    e_heavy.keyOn();
    len::ms => now;
    e_heavy.keyOff();
    10::ms => now;

    sndbufArray[sbc] =< e_heavy;
    e_heavy =< p_heavy;
    p_heavy =< dac;
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
OscRecv oin;

// create our OSC message
OscMsg msg;

// use port 6449
6449 => oin.port;

//Set to listen all
//oin.listen();

// create an address in the receiver

oin.listen();
oin.event( "/sndbuf/bbq/number, i f" ) @=> OscEvent oe;


// infinite event loop
while( true )
{
    // wait for event to arrive
    oe => now;
    //chanevent => now;

    <<<"DEBUG">>>;

    // grab the next message from the queue.
    while ( oe.nextMsg() != 0 )
    {
        // getFloat fetches the expected float (as indicated by "f")
        oe.getInt() => int which;
        oe.getFloat() => float which2;
        // print
        <<< "parsing (via OSC):", which, which2 >>>;
        // pass to player
        parseKeys( which, which2 );
    }
}

fun void changeChan( float which2 )
{
    (which2)$int => addCHAN;

    <<< addCHAN >>>;
}

// function that parses keyboard presses
fun void parseKeys( int which, float which2 )
{
    changeChan( which2 );

    // match numbers to letters and increment the appropriate layer variable
    if( which == 30 ) { // a
        spork ~playSighReverse();
    }
    else if( which == 48 ) { // b
        spork ~playBongo();
    }
    else if( which == 46 ) { // c
        spork ~playChoke();
    }
    else if( which == 32 ) {  // d
        spork ~playDong();
    }
    else if( which == 18 ) {  // e
        spork ~playBurp();
    }
    else if( which == 33 ) {  // f
        spork ~playSteam();
    }
    else if( which == 34 ) {  // g
        spork ~playDrag();
    }
    else if( which == 35 ) {  // h
        spork ~playSigh();
    }
    else if( which == 23 ) {  // i
        spork ~playWhee();
    }
    else if( which == 36 ) {  // j
        spork ~playBoil();
    }
    else if( which == 37 ) {  // k
        spork ~play808();
    }
    else if( which == 38 ) {  // l
        spork ~playBubbles();
    }
    else if( which == 50 ) {  // m
        spork ~playMama();
    }
    else if( which == 49 ) {  // n
        spork ~playMeow();
    }
    else if( which == 24 ) {  // o
        spork ~playTongue();
    }
    else if( which == 25 ) {  // p
        spork ~playPop();
    }
    else if( which == 16 ) {  // q
        spork ~playSqueak();
    }
    else if( which == 19 ) {  // r
        spork ~playGrr();
    }
    else if( which == 31 ) {  // s
        spork ~playWhisper();
    }
    else if( which == 20 ) {  // t
        spork ~playSideStick();
    }
    else if( which == 22 ) {  // u
        spork ~playAlien();
    }
    else if( which == 47 ) {  // v
        spork ~playVroom();
    }
    else if( which == 17 ) {  // w
        spork ~playMonkey();
    }
    else if( which == 21 ) {  // y
        spork ~playBoing();
    }
    else if( which == 44 ) {  // z
        spork ~playBuzz();
    }
    else if( which == 51 ) {  // ,
        spork ~playLight();
    }
    else if( which == 52 ) {  // .
        spork ~playMedium();
    }
    else if( which == 53 ) {  // /
        spork ~playHeavy();
    }

    (sbc+1)%instanceCount => sbc;
}
