(
//Αρχικά, για να ανοίξετε τον server, πατήστε Server --> Βοοτ
//Διαλέξτε από γραμμή 4 μέχρι γραμμή 10 και πατήστε ctrl+enter για να ξεκινήσει ο server και να οριστούν τα buffers και οι μεταβλητές
~buf1=  Buffer.read(s,"C:/Users/User/OneDrive/Υπολογιστής/SC/Aphex.wav");
~buf2=  Buffer.read(s,"C:/Users/User/OneDrive/Υπολογιστής/SC/mfdoom.wav");
~buf3=  Buffer.read(s,"C:/Users/User/OneDrive/Υπολογιστής/SC/Ocean.wav");

x = {PlayBuf .ar(2,~buf1,)};
y = {PlayBuf .ar(2,~buf2,)};
z =  {PlayBuf .ar(2,~buf3,)};

//Πρώτο μέρος//
//Διαλέξτε από γραμμή 14 μέχρι γραμμή 40 και πατήστε ctrl+enter για αναπαραγωγή ήχου. Πατήστε ctrl+. για τερματισμό αναπαραγωγής
Routine
{
	y.play;
	play {
    Limiter.ar(
        tanh(
            0.5 * GVerb.ar(
                HPF.ar(
                    PinkNoise.ar(0.08+LFNoise1.kr(0.3,0.02))+LPF.ar(Dust2.ar(LFNoise1.kr(0.2).range(40,50)),7000),
                    400
                ),
                250,100,0.25,drylevel:0.3
            ) * Line.kr(0,1,10)
        ) + (
            GVerb.ar(
                LPF.ar(
                    10 * HPF.ar(PinkNoise.ar(LFNoise1.kr(3).clip(0,1)*LFNoise1.kr(2).clip(0,1) ** 1.8), 20)
                    ,LFNoise1.kr(1).exprange(100,2500)
                ).tanh,
               270,30,0.7,drylevel:0.5
            ) * Line.kr(0,0.7,30)
        )
    )
};
    7.wait;
	x.play;
}.play;

//Δεύτερο μέρος//
//Διαλέξτε από γραμμή 44 μέχρι γραμμή 142 και πατήστε ctrl+enter για αναπαραγωγή ήχου. Πατήστε ctrl+. για τερματισμό αναπαραγωγής
Routine
{
z.play;
Pbind(
\note, Pseq([-15,-22,-17,-24,-19,-13,-20,-15,-22,-17,-20,-19,-22,-17,-24,-13,-20]),
\dur,  Pseq([3.2,3.2,3.2,3.2,3.2,3.2,3.2,3.2,3.2,3.2,3.2,3.2,3.2,3.2,3.2,1.5,1.5]),
\amp, 0.5,
\legato, 1,
).play;
Pbind(
\note, Pseq([12,11,9,7,5,7,9,12,11,9,7,5,4]),
\dur,  Pseq([0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,3]),
\amp, 0.5,
\legato, 1,
).play;
12.8.wait;
Pbind(
\note, Pseq([9,7,5,4,2,4,5,9,8,5,4,2,0]),
\dur,  Pseq([0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,2.2]),
\amp, 0.5,
\legato, 1,
).play;
12.wait;
Pbind(
\note, Pseq([1,2,9,9]),
\dur, Pseq([0.8,0.8,0.8,3]),
\amp, 0.5,
\legato, 1,
).play;
5.6.wait;
Pbind(
\note, Pseq([12,11,7]),
\dur,  Pseq([0.8,0.8,3]),
\amp, 0.5,
\legato, 1,
).play;
7.2.wait;
Pbind(
\note, Pseq([0,2,6,6]),
\dur,  Pseq([0.8,0.8,0.8,3]),
\amp, 0.5,
\legato, 1,
).play;
5.6.wait;
Pbind(
\note, Pseq([9,7,5,4]),
\dur,  Pseq([0.8,0.8,1.5,3]),
\amp, 0.5,
\legato, 1,
).play;
8.wait;
Pbind(
\note, Pseq([-15,-22,-17,-24,-19,-13,-20,-15,-22,-17,-20,-15,-22,-24,-20]),
\dur,  Pseq([3.2,3.2,3.2,3.2,3.2,3.2,3.2,3.2,3.2,3.2,3.2,3.2,3.2,3.2,3.2,1.0,1.0]),
\amp, 0.5,
\legato, 1,
).play;
Pbind(
\note, Pseq([12,11,9,7,5,7,9,12,11,9,7,5,4]),
\dur,  Pseq([0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,3]),
\amp, 0.5,
\legato, 1,
).play;
12.8.wait;
Pbind(
\note, Pseq([9,7,5,4,2,4,5,9,8,5,4,2,0]),
\dur,  Pseq([0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,2.2]),
\amp, 0.5,
\legato, 1,
).play;
12.wait;
Pbind(
\note, Pseq([1,2,9,9]),
\dur, Pseq([0.8,0.8,0.8,3]),
\amp, 0.5,
\legato, 1,
).play;
5.6.wait;
Pbind(
\note, Pseq([12,11,16]),
\dur,  Pseq([0.8,0.8,3]),
\amp, 0.5,
\legato, 1,
).play;
7.2.wait;
Pbind(
\note, Pseq([16,16,12,12]),
\dur,  Pseq([0.8,0.8,0.8,3]),
\amp, 0.5,
\legato, 1,
).play;
5.6.wait;
Pbind(
\note, Pseq([11,14,12]),
\dur,  Pseq([0.8,0.8,3.5]),
\amp, 0.5,
\legato, 1,
).play;
}.play;
//Τέλος, για να κλείσετε τον server, πατήστε Server --> Quit
)