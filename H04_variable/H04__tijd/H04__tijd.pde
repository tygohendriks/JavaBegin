float seconden= 6000;
float minuten = 0;
float uren = 0;
float dagen = 0;
float jaren = 0;

minuten = seconden /= 60;
println(minuten);//100.0
uren = minuten /= 60;
println(uren);//1.6 uur
dagen = uren /= 24;
println(dagen);//0.06944444
jaren = dagen /= 365;
println(jaren);//1.9025874E-4
