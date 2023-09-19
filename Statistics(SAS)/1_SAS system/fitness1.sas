data weight_club; 
input IdNumber Name $ Team $ StartWeight EndWeight;
Loss=StartWeight-EndWeight; 
datalines; 
1023 David red 189 165
1049 Amelia yellow 145 124
1219 Alan red 210 192
1246 Ravi yellow 194 177
1078 Ashley red 127 118
; 
run;

proc print data=weight_club;
title 'Health Club Data';
run;

data weight_kg; set weight_club;
  weight_s=startweight*0.453592;
  weight_e=endweight*0.453592;
  weight_l=loss*0.453592;
  weight_p=weight_l/weight_s*100;
run;

proc print data=weight_kg;
  var  idnumber name weight_s weight_e weight_l weight_p;
  title 'Health Club Data';
run;

data weight; set weight_kg;
  weight_p=weight_l/weight_s*100;
  if weight_p<10  then  success=0;
  if weight_p>=10 then success=1;
  if weight_p<10  then  pass='N'; 
  if weight_p>=10 then pass='Y';
  weight_s=round(weight_s,0.1);
  weight_e=round(weight_e,0.1);
  weight_l=round(weight_l,0.01);
  weight_p=round(weight_p,0.001);
run;

proc print data=weight;
  var  idnumber name weight_s weight_e weight_l weight_p success pass;
  title 'Health Club Data';
run;


