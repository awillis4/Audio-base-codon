import processing.sound.*;

SinOsc sin;String[]line;float freq=400;char curchar='x';
int dex=0;int dexline=0;int linum=0;int letternum=0;

void setup(){size(400,400);fill(255);frameRate(10);textSize(90);textAlign(CENTER,CENTER);
line=loadStrings("AVPR1A-spaces.txt");sin=new SinOsc(this);sin.play();sin.amp(.7);}

void draw(){background(0);

if(dex<line.length){String[]pieces=split(line[dex],'\t');
if(linum<pieces[dexline].length()){char[]chars=pieces[dexline].toCharArray();
if(letternum<chars.length){print(chars[letternum]);
char lettercur=chars[letternum];char letternow=chars[letternum];

if(lettercur=='a'){freq=545.6;}else if(lettercur=='t'){freq=537.8;}
else if(lettercur=='c'){freq=537.8;}else if(lettercur=='g'){freq=550;}else{freq=900;}

//if(lettercur=='a'){freq=300;}else if(lettercur=='t'){freq=400;}
//else if(lettercur=='c'){freq=500;}else if(lettercur=='g'){freq=600;}else{freq=900;}

curchar=lettercur;letternum++;}else{letternum=0;}linum++;}else{linum=0;}dex++;}else{dex=0;}
text(curchar,width/2,height/2);sin.freq(freq);}
