/***********************************************/
/* You can use this SAS program for Question 1 */
/***********************************************/
proc iml;
print 'Practical 6: Question 1';

print 'Question 1(a)';
Q1ai=cdf('uniform',130,120,140);
print Q1ai;

print 'Question 1(b)';
Q1=quantile('uniform',0.25,120,140);
print Q1;

print 'Question 1(c)';
f_115=pdf('uniform',115,120,140);
f_130=pdf('uniform',130,120,140);
print f_115 f_130;

print 'Question 1(d)';
alpha=120; beta=140;
mean=(alpha+beta)/2;
print mean;

print 'Question 1(e)';
/**************************************************************/
/* pdf=1/(beta-alpha);                                         */
/* CDF=(x-alpha)/(beta-alpha);                                */
/* quantile=alpha+p*(beta-alpha);                              */
/**************************************************************/
print 'Q1ei:   ' ((130-alpha)/(beta-alpha));
print 'Q1eiii: ' (alpha+0.25*(beta-alpha));
print 'Q1ev:   ' (1/(beta-alpha));

print 'Question 2(f)';
n=10; theta=20;

print 'Question 2(g)';
call randseed(987,1); r=randfun(1000,'uniform',120,140);
print 'Observations 101-110: ' (r[101:110]);
create Airplane from r[colname={'time'}];
append from r;
quit;

ods graphics off;
proc univariate data=Airplane;
var time;
histogram / endpoints=120 to 140 by 2 cfill=blue;
title 'Flight time of an airplane';
run;

data Airplane2; set Airplane;
  if time<=130 then grp1=1; else grp1=0;
run;

proc freq data=Airplane2;
tables grp1;
title 'Empirical probabilities of the flight time of an airplane';
run;

*** Alternatively ***;
proc means data=Airplane2;
var grp1;
run;

