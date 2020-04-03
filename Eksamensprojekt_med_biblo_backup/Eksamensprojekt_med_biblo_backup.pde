//ArrayList<Molmasse> molmasser = new ArrayList<Molmasse>();
String tal;
String tekst="";
String massevaerdi;
float massedata;
float atommertalhusk;
float molmasse;
FloatList inventar = new FloatList();
//int talefter=0;
float talvaerdi;
FloatList Symbolatomhusker = new FloatList();
StringList Rawdata = new StringList();
StringList Vaerdiliste = new StringList();

import controlP5.*;// importeret fra biblitoteket 
import java.util.regex.Matcher.*;//henter disse fra bibloteket.
import java.util.regex.Pattern.*;
import java.util.regex.*;

ControlP5 cp5;//sætter op en variabel.

void setup(){//Denne void kører en gang, fra starten af.
  size(1000,500);//Dette laver et vinduet af (1000 pixels ad x aksen og 500 pixels ad y-aksen.
  background(71,113,72);//Dette sætter stemningen og baggrunden.
  //molmasser.add(new Molmasse());
  //Molmasse del = molasser.get(0);



cp5= new ControlP5(this);//Dette har i sammenhæng med controlP5, gjort at man kan sige cp5 istedet for ControlP5, og (this) gør det objektorienteret, som er smart da vi skal bruge den til et objekt der er en knap.

PFont fonten = createFont("Arial",18);//Dette laver fonten Arial (henter da den eksistere)
ControlFont font = new ControlFont(fonten);//Dette gør så det er en font for alle cp5 enheder.

cp5.setFont(font);//Dette sætter det som fonten.

cp5.addButton("STOF")//Tilføjer en knap med Størrelse og position.
.setPosition(335,163)
.setSize(183,35)
;
cp5.addButton("masse")
.setPosition(750,163)
.setSize(183,35)
;
cp5.addButton("next_stof")
.setPosition(650,23)
.setSize(313,55)
;
cp5.addTextfield("Textfelt")//Dette sætter et tekstfelt fra bibloteket, herunder størrelse af textfelt og position.
.setCaptionLabel("Stof & masse")
.setPosition(145,13)
.setSize(283,62)
.setAutoClear(false)
;
cp5.addTextfield("Textfelttal")//Dette sætter et tekstfelt fra bibloteket, herunder størrelse af textfelt og position.
.setCaptionLabel("Tal")
.setPosition(445,45)
.setSize(83,62)
.setAutoClear(false)
;
tabledata();//dette gør at ved startup loader den kommanden tabledata og gør det muligt at skabe en void der hedder tabledata.
}
void draw(){//dette er en konstant void, som kører 60 gange i sekunder. Medmindre Kommanden frameRate(x) er brugt. 
   background(71,113,72);//Dette sætter stemningen og baggrunden.
   rectMode(CENTER);
fill(255);//Farver rectanglerne vide.
rect(335,233,390,70,6);//Skaber en rektangel.
rect(740,233,410,70,6);
rect(335,388,390,70,6);
rect(740,388,410,70,6);
//rect(160,83,310,70);
textSize(22);//Sætter Tekststørrelsen til text.
fill(201,0,61);//Farver teksten
text("Molarmasse:",145,393);//Sætter en Tekst med molarmasse på X og Y pixel.
text("Stofmængde:",540,393);
  if(taeller==-1){//Her appelere den til at hvis taelleren er -5, så starter programmet.
    if(Symbolatom.hasValue(tekst)){//Her appelere den til at se tekstfeltet og hente Value hvis Tekstsfelte har noget som StringListen  Symbolatom indeholder.
      for(int j=0; j < Symbolatom.size();j++){//Dette er et forlob der tæller kolloner herunder tæller dens size som er på 118 Strings.
        String Hukommelse =Symbolatom.get(j);//Her laves der en variable der gemmes som Symbolsatoms for-loop værdi.
        if(Hukommelse.equals(tekst)){//Her appelere hvis For loopets værdi som er gemt er det samme som det der står i tekstfeltet.
          taeller=j;//Så er det sandt altså Taelleren har den rigtige for loop værdi.
          println(Atommasse.get(taeller));// Dette bliver brugt til at tjekke om programmet virker ved at sætte Tekstfeltets værdi i Console.
          //text(Atommasse.get(taeller)+"mol",280,393);//Dette henter værdien fra tekstfeltet og hvis det passer henter den Stringliste [3] som er atommassen der passer i sizen af Symbolatom Det vil sige. Hvis der er tastet "H" vil den skrive H's atommasse ud nemlig 1.007.
          //Derefter skriver den ud dens enhed nemlig +"mol" og dens placering derefter.
          String atommer = Atommasse.get(taeller);//Her gemmes værdien så den kan blive konverteret og husket-imens programmet kører til at blive en float så det kan blive divideret med massen (herunder massedata).
           atommertalhusk =Float.parseFloat(atommer);//konvertering.(molarmasse)
            text(massedata/ atommertalhusk+"g/mol",688,393);
            text("Dit indtaste stof:"+tekst,150,240);
         //////////////////////////////////////////////////////// REGNESEKTION.
        //et for looop der kørrer igennem Sybloatomhusker. plusser vørdier og printer molarmassen
//float molmasse;
for(int k=0; k < Symbolatomhusker.size();k++){
  Symbolatomhusker.get(k);
  molmasse=molmasse+Symbolatomhusker.get(k);
}
  text(molmasse+"mol",283,290);
         //String givmigtekstmellem(String s, String start, String slut){
           //int startIndex = s.indexOf(start);
           //if(startIndex== -1) {
             //return "-";
           //}
           //startIndex +=start.length();
           
          //int slutIndex = s.indexOf(slut,startIndex);
          //if(slutIndex == -1) {
            //return " ";
          //}
          //return s.substring(startIndex,slutIndex);
         //}
 
    
         //String REGEX= "*b";
         //String[] args;
         //String REPLACE = "-";
         //Pattern n = Pattern.compile(REGEX);
         //Matcher m = n.matcher(tekst);
        //StringBuffer sb = new StringBuffer();
        //while(m.find()) {
         //m.appendReplacement(sb, REPLACE);         
        //m.appendTail(sb);
        //println(sb.toString());
        
        
         }
           }                 
           }
           }
    //}  
  }
           

void masse(){
  massevaerdi=cp5.get(Textfield.class,"Textfelt").getText();
  float massedata = Float.parseFloat(massevaerdi);
text("Indtastede masse:"+massevaerdi+"g",553,240);
 //text(massedata/ atommertalhusk+"g/mol",688,393);
 
}


void STOF(){ 
tekst=cp5.get(Textfield.class,"Textfelt").getText();
////Bergner Molmassen. plusse indhold i stinglist molmasse input.
tal=cp5.get(Textfield.class,"Textfelttal").getText();
//print(tal);
//text("Dit indtaste stof:"+tekst,150,240);
   talvaerdi = Float.parseFloat(tal);
  //println(talvaerdi);
  //nytalvaerdi = talvaerdi*atommertalhusk;
  //println(talvaerdi);
  
  //float nytalvaerdi=talvaerdi*massedata;
  //print(talvaerdi);
  
//} else if(talvaerdi=='0');
  //talvaerdi=talvaerdi*1;
 
}
void next_stof(){
  ////hent stof værdier. gem i stringlist.
  
  Symbolatomhusker.append(atommertalhusk* talvaerdi);
  
  float nytalvaerdi = atommertalhusk* talvaerdi;// Her husker den der førstes stofs værdi.
  //println(nytalvaerdi);
  //inventar = new FloatList();
  inventar.append(nytalvaerdi);
  //inventar.add(new nytalvaerdi);
  //println(inventar);
  //nytalvaerdi =inventar.size() -1;
  //inventar.(nytalvaerdi)
  
   float [] sorteretinventar = inventar.array();
  println(sorteretinventar);
  //if(inventar.size()==0);
  //inventar.add(0,nytalvaerdi);
    //if(inventar.size()==1);
  //inventar.add(1,nytalvaerdi);
  
  cp5.get(Textfield.class,"Textfelt").clear();
  cp5.get(Textfield.class,"Textfelttal").clear();
  taeller=-1;

  
  //for(int i = 0; i <inventar.length;i++) {
    //inventar[i] = nytalvaerdi;
  
  //Hvis inventar(0,nytalvaerdi) eksistere tilføj ny nytalvaerdi til listen.
  //if(inventar.add(
  //float [] sorteretinventar = inventar.array();
  println(sorteretinventar);
  //float nytalvaerdi2 = atommertalhusk*talvaerdi;
  //inventar.append(nytalvaerdi2);
  
                    //EM hjælp.
  println(inventar);
  tekst="";
  tal="";
  
  String Input =cp5.get(Textfield.class,"Textfelt").getText();
  Rawdata.append(Input);
  tekst=" ";
  tal=" ";
  
  //Symbolatomhusker.append(cp5.get(
}
