import java.util.*;
//int dex=0;int dexline=0;int linum=0;int letnum=0;int m=0;int n=0;String curchar="x";
//String[]line=loadStrings("AVPR1A-spaces.txt");
//PrintWriter out=createWriter("vasoascodons.txt");
//ArrayList filter=new ArrayList();
//String[]lin1=new String[n];
String[]toerase=new String[]
{"ttt","ttc","tta","ttg","cct","ctc","cta","ctg","att","atc","ata","atg","gtt","gtc",
 "gta","gtg","tct","tcc","tca","tcg","agt","agc","cct","ccc","cca","ccg","act","acc",
 "aca","acg","gct","gcc","gca","gcg","tat","tac","taa","tag","tga","cat","cac","aaa",
 "cag","aat","aac","aaa","aag","gat","gac","gaa","gag","tgt","tgc","tgg","cgt","cgc",
 "cga","cgg","aga","agg","ggt","ggc","gga","ggg","___"," "};

void setup(){
String[]line=loadStrings("AVPR1A-spaces.txt");PrintWriter out=createWriter("vasoascodons.txt");

//if(dex<line.length){String[]pieces=split(line[dex],"\n");
//if(linum<=pieces[dexline].length()){String chars=pieces[dexline].toString();
//if(letnum<=chars.length()){print(chars);String letcur=chars;String letnow=chars;

String j=join(line,"");
//for(n=0;n<150;n++){//if(dexline==20){out.println('\n');}
//For Phenylalanine "ttt","ttc",
//if((letnow=="ttt")||(letnow=="ttc")){lin1=append(lin1,"F ");}
j=j.replaceAll("ttt","Fa");j=j.replaceAll("ttc","Fb");
//Leucine "tta","ttg","ctt","ctc","cta","ctg",
//if((letnow=="tta")||(letnow=="ttg")||(letnow=="ctt")||(letnow=="ctc")||(letnow=="cta")||(letnow=="ctg")){lin1=append(lin1,"L ");}
j=j.replaceAll("tta","La");j=j.replaceAll("ttg","Lb");j=j.replaceAll("ctt","Lc");
j=j.replaceAll("ctc","Ld");j=j.replaceAll("cta","Le");j=j.replaceAll("ctg","Lf");
//Isoleucine "att","atc","ata",
//if((letnow=="att")||(letnow=="atc")||(letnow=="ata")){lin1=append(lin1,"I ");}
j=j.replaceAll("att","Ia");j=j.replaceAll("atc","Ib");j=j.replaceAll("ata","Ic");
//Methionine "atg",
//if((letnow=="atg")){lin1=append(lin1,"M ");}
j=j.replaceAll("atg","Ma");
//Valine "gtt","gtc","gta","gtg",
//if((letnow=="gtt")||(letnow=="gtc")||(letnow=="gta")||(letnow=="gtg")){lin1=append(lin1,"V ");}
j=j.replaceAll("gtt","Va");j=j.replaceAll("gtc","Vb");j=j.replaceAll("gta","Vc");j=j.replaceAll("gtg","Vd");
//Serine "tct","tcc","tca","tcg","agt","agc",
//if((letnow=="tct")||(letnow=="tcc")||(letnow=="tca")||(letnow=="tcg")||(letnow=="agt")||(letnow=="agc")){lin1=append(lin1,"S ");}
j=j.replaceAll("tct","Sa");j=j.replaceAll("tcc","Sb");j=j.replaceAll("tca","Sc");
j=j.replaceAll("tcg","Sd");j=j.replaceAll("agt","Se");j=j.replaceAll("agc","Sf");
//Proline "cct","ccc","cca","ccg",
//if((letnow=="cct")||(letnow=="ccc")||(letnow=="cca")||(letnow=="ccg")){lin1=append(lin1,"P ");}
j=j.replaceAll("cct","Pa");j=j.replaceAll("ccc","Pb");j=j.replaceAll("cca","Pc");j=j.replaceAll("ccg","Pd");
//Threonine "act","acc","aca","acg",
//if((letnow=="act")||(letnow=="acc")||(letnow=="aca")||(letnow=="acg")){lin1=append(lin1,"T ");}
j=j.replaceAll("act","Ta");j=j.replaceAll("acc","Tb");j=j.replaceAll("aca","Tc");j=j.replaceAll("acg","Td");
//Alanine "gct","gcc","gca","gcg",
//if((letnow=="gct")||(letnow=="gcc")||(letnow=="gca")||(letnow=="gcg")){lin1=append(lin1,"A ");}
j=j.replaceAll("gct","Aa");j=j.replaceAll("gcc","Ab");j=j.replaceAll("gca","Ac");j=j.replaceAll("gcg","Ad");
//Tyrosine "tat","tac",
//if((letnow=="tat")||(letnow=="tac")){lin1=append(lin1,"Y ");}
j=j.replaceAll("tat","Ya");j=j.replaceAll("tac","Yb");
//Ochre,Amber,Opal "taa","tag","tga",
//if((letnow=="taa")||(letnow=="tag")||(letnow=="tga")){lin1=append(lin1,"O ");}
j=j.replaceAll("taa","Oa"+"\n");j=j.replaceAll("tag","Ob"+"\n");j=j.replaceAll("tga","Oc"+"\n");
//Histidine "cat","cac",
//if((letnow=="cat")||(letnow=="cac")){lin1=append(lin1,"H ");}
j=j.replaceAll("cat","Ha");j=j.replaceAll("cac","Hb");
//Glutamine "caa","cag",
//if((letnow=="caa")||(letnow=="cag")){lin1=append(lin1,"Q ");}
j=j.replaceAll("caa","Qa");j=j.replaceAll("cag","Qb");
//Aspargine "aat","aac",
//if((letnow=="aat")||(letnow=="aac")){lin1=append(lin1,"N ");}
j=j.replaceAll("aat","Na");j=j.replaceAll("aac","Nb");
//Lysine "aaa","aag",
//if((letnow=="aaa")||(letnow=="aag")){lin1=append(lin1,"L ");}
j=j.replaceAll("aaa","La");j=j.replaceAll("aag","Lb");
//Aspartine "gat","gac",
//if((letnow=="gat")||(letnow=="gac")){lin1=append(lin1,"D ");}
j=j.replaceAll("gat","Da");j=j.replaceAll("gac","Db");
//Glutamic "gaa","gag",
//if((letnow=="gaa")||(letnow=="gag")){lin1=append(lin1,"E ");}
j=j.replaceAll("gaa","Ea");j=j.replaceAll("gag","Eb");
//Cysteine "tgt","tgc",
//if((letnow=="tgt")||(letnow=="tgc")){lin1=append(lin1,"C ");}
j=j.replaceAll("tgt","Ca");j=j.replaceAll("tgc","Cb");
//Tryptophan "tgg",
//if((letnow=="tgg")){lin1=append(lin1,"W ");}
j=j.replaceAll("tgg","Wa");
//Arganine "cgt","cgc","cga","cgg","aga","agg",
//if((letnow=="cgt")||(letnow=="cgc")||(letnow=="cga")||(letnow=="cgg")||(letnow=="aga")||(letnow=="agg")){lin1=append(lin1,"R ");}
j=j.replaceAll("cgt","Ra");j=j.replaceAll("cgc","Rb");j=j.replaceAll("cga","Rc");
j=j.replaceAll("cgg","Rd");j=j.replaceAll("aga","Re");j=j.replaceAll("agg","Rf");
//Glycine "ggt","ggc","gga","ggg",
//if((letnow=="ggt")||(letnow=="ggc")||(letnow=="gga")||(letnow=="ggg")){lin1=append(lin1,"G ");}
j=j.replaceAll("ggt","Ga");j=j.replaceAll("ggc","Gb");j=j.replaceAll("gga","Gc");j=j.replaceAll("ggg","Gd");
//print underscore "___"
//if((letnow=="___")){lin1=append(lin1,"_ ");}
j=j.replaceAll("___ ","");
//print nothing " "
//if((letnow==" ")){lin1=append(lin1,"");}out.print(lin);}
j=j.replaceAll(" ","");

String[]line2=split(j," ");
//String erase(String j,String[]toerase){j+=" ";for(n=0;n<toerase.length();n++){
//String pattern=toerase[n]+" ";j=j.replaceAll(pattern,"");}return j;
saveStrings("vasoascodons.txt",line2);//String[]out=loadStrings("vasoascodons.txt");
//curchar=letcur;letnum++;}else{letnum=0;}linum++;}else{linum=0;}dex++;}else{dex=0;}
//saveStrings("vasoascodons.txt",lin1);out.print(Arrays.toString(lin1));
out.flush();out.close();exit();noLoop();}
