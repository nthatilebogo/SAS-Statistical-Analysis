/***********************************************/
/* You can use this SAS program for Question 3 */
/***********************************************/

data health;
input insurance$ age$ freq;
datalines;
Yes 18-34  60
Yes   35+ 105
No  18-34  20
No    35+  15
;

proc freq data=health order=data;
tables insurance;
tables age;
tables insurance*age;
weight freq;
title 'Question 3(b) i-v';
run;

proc iml;
print 'Question 3(c)';

F={60 105,
   20  15};
n=F[+];
P=F/n;
print 'Question 3(c)i'  P;
H=P[,+];
print 'Question 3(c)ii' H;




