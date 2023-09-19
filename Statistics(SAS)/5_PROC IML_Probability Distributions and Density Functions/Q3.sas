/***********************************************/
/* You can use this SAS program for Question 3 */
/***********************************************/

proc iml;
print 'Practical 5: Question 3';
n=10;
p=0.3;

print 'Question 3(c)';

print 'Question 3(d)';
Q3di=pdf('binomial',3,p,n);
Q3dii=CDF('binomial',7,p,n)-CDF('binomial',3,p,n);
print Q3di Q3dii;

print 'Question 3(e)';
call randseed(615,1); x=randfun(1000,'binomial',p,n);
create Martin from x[colname={'purchases'}]; 
append from x;
quit;

data grp; set Martin;
if purchases=3 then    grp1=1; else grp1=0;
if 3<purchases<=7 then grp2=1; else grp2=0;

proc freq data=grp;
tables grp1-grp2;
run;

proc means data=grp;
var grp1-grp2;
run;






