(
~buf1=  Buffer.read(s,"C:/Users/User/OneDrive/Υπολογιστής/SC/Aphex Twin - Alberto Balsam.wav");
~buf2=  Buffer.read(s,"C:/Users/User/OneDrive/Υπολογιστής/SC/mfdoom.wav");

Routine
{
	var x,y,storm;
    x =  {PlayBuf .ar(2,~buf1,)};
    y = {PlayBuf .ar(2,~buf2,)};
	storm = {
    Limiter.ar(
        0.3 * tanh(
            3 * GVerb.ar(
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
	x.play;
	y.play;
    storm.play;
    10.wait;
	storm.release;
}.play;

)
