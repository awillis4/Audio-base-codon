import processing.sound.*;
int dex=0;int dexline=0;int linum=0;int letnum=0;int m=0;int n=0;String curchar="x";
SinOsc sin;float freq=400;String[]line3;

void setup(){line3=loadStrings("vasoascodons.txt");
size(400,400);fill(255);frameRate(10);textSize(90);textAlign(CENTER,CENTER);
sin=new SinOsc(this);sin.play();sin.amp(.7);}

//The Resonant Frequency of: Guanine:550,Adenine:545.6,Thymine:543.4,Cytosine:537.8 Hz. 
//https://oursounduniverse.com/the-infrared-frequencies-of-dna-bases-science-and-art-by-s-alexjander/

void draw(){background(0);

if(dex<line3.length){String[]pieces=split(line3[dex],"\n");
if(linum<=pieces[dexline].length()){String chars=pieces[dexline].toString();
if(letnum<=chars.length()){print(chars);String letcur=chars;String letnow=chars;

String j2=join(line3,"");for(n=0;n<j2.length();n++){
//if(letcur=="|") {delay(100);}else
//For Phenylalanine "ttt","ttc",
if(letcur=="Fa"){freq=543.40;break;}else if(letcur=="Fb"){freq=541.53;break;}else
//Leucine "tta","ttg","ctt","ctc","cta","ctg",
if(letcur=="La"){freq=544.13;break;}else if(letcur=="Lb"){freq=545.60;break;}else if(letcur=="Lc"){freq=541.53;break;}else
if(letcur=="Ld"){freq=539.70;break;}else if(letcur=="Le"){freq=542.27;break;}else if(letcur=="Lf"){freq=543.73;break;}else
//Isoleucine "att","atc","ata",
if(letcur=="Ia"){freq=544.13;break;}else if(letcur=="Ib"){freq=542.27;break;}else if(letcur=="Ic"){freq=544.87;break;}else
//Methionine "atg",
if(letcur=="Ma"){freq=546.30;break;}else
//Valine "gtt","gtc","gta","gtg",
if(letcur=="Va"){freq=547.80;break;}else if(letcur=="Vb"){freq=543.73;break;}else
if(letcur=="Vc"){freq=546.30;break;}else if(letcur=="Vd"){freq=547.80;break;}else
//Serine "tct","tcc","tca","tcg","agt","agc",
if(letcur=="Sa"){freq=541.53;break;}else if(letcur=="Sb"){freq=539.70;break;}else if(letcur=="Sc"){freq=542.27;break;}else
if(letcur=="Sd"){freq=543.73;break;}else if(letcur=="Se"){freq=546.33;break;}else if(letcur=="Sf"){freq=544.47;break;}else
//Proline "cct","ccc","cca","ccg",
if(letcur=="Pa"){freq=539.70;break;}else if(letcur=="Pb"){freq=537.80;break;}else
if(letcur=="Pc"){freq=540.40;break;}else if(letcur=="Pd"){freq=541.87;break;}else
//Threonine "act","acc","aca","acg",
if(letcur=="Ta"){freq=542.27;break;}else if(letcur=="Tb"){freq=540.40;break;}else
if(letcur=="Tc"){freq=543.00;break;}else if(letcur=="Td"){freq=544.47;break;}else
//Alanine "gct","gcc","gca","gcg",
if(letcur=="Aa"){freq=543.73;break;}else if(letcur=="Ab"){freq=541.87;break;}else
if(letcur=="Ac"){freq=544.47;break;}else if(letcur=="Ad"){freq=545.93;break;}else
//Tyrosine "tat","tac",
if(letcur=="Ya"){freq=544.13;break;}else if(letcur=="Yb"){freq=542.23;break;}else
//Ochre,Amber,Opal "taa","tag","tga",
if(letcur=="Oa"){freq=544.87;delay(1000);break;}else
if(letcur=="Ob"){freq=546.33;delay(1000);break;}else
if(letcur=="Oc"){freq=546.33;delay(1000);break;}else
//Histidine "cat","cac",
if(letcur=="Ha"){freq=542.23;break;}else if(letcur=="Hb"){freq=540.40;break;}else
//Glutamine "caa","cag",
if(letcur=="Qa"){freq=543.00;break;}else if(letcur=="Qb"){freq=544.47;break;}else
//Aspargine "aat","aac",
if(letcur=="Na"){freq=544.87;break;}else if(letcur=="Nb"){freq=543.00;break;}else
//Lysine "aaa","aag",
if(letcur=="La"){freq=545.60;break;}else if(letcur=="Lb"){freq=547.07;break;}else
//Aspartine "gat","gac",
if(letcur=="Da"){freq=546.33;break;}else if(letcur=="Db"){freq=544.47;break;}else
//Glutamic "gaa","gag",
if(letcur=="Ea"){freq=547.07;break;}else if(letcur=="Eb"){freq=548.53;break;}else
//Cysteine "tgt","tgc",
if(letcur=="Ca"){freq=545.60;break;}else if(letcur=="Cb"){freq=543.73;break;}else
//Tryptophan "tgg",
if(letcur=="Wa"){freq=547.80;break;}else 
//Arganine "cgt","cgc","cga","cgg","aga","agg",
if(letcur=="Ra"){freq=543.73;break;}else if(letcur=="Rb"){freq=541.87;break;}else if(letcur=="Rc"){freq=544.47;break;}else
if(letcur=="Rd"){freq=543.73;break;}else if(letcur=="Re"){freq=547.07;break;}else if(letcur=="Rf"){freq=548.53;break;}else
//Glycine "ggt","ggc","gga","ggg",
if(letcur=="Ga"){freq=547.80;break;}else if(letcur=="Gb"){freq=543.73;break;}else
if(letcur=="Gc"){freq=548.53;break;}else if(letcur=="Gd"){freq=550.00;break;}else
if(letcur==" ") {freq=900.00;break;}else{freq=900;}break;}

//if(lettercur=='a'){freq=300;}else if(lettercur=='t'){freq=400;}
//else if(lettercur=='c'){freq=500;}else if(lettercur=='g'){freq=600;}else{freq=900;}

curchar=letcur;letnum++;}else{letnum=0;}linum++;}else{linum=0;}dex++;}else{dex=0;}
text(curchar,width/2,height/2);sin.freq(freq);}
