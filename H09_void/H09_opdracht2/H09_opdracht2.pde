int cijferEen = 5;

void setup(){
antwoord(cijferEen, 6);
antwoord(cijferEen, 20);
size(500,500);
}

void draw(){

}

void antwoord(float cijfer, float cijferTwee){
float totaal = ((cijfer + cijferTwee))/2;
println ("som " + cijfer +"+" + cijferTwee + "/2=" + totaal);
}
