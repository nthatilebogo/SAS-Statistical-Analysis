/***********************************************/
/* You can use this SAS program for Question 2 */
/***********************************************/

proc iml;
print 'Practical 5: Question 2';

print 'Question 2(a)i';
xt=2:12;          * numerical row vector with values 2 to 12';
x=xt`;            * numerical column vector with values 2 to 12'; 
char_x='2':'12';  * character row vector with values 2 to 12'; 
p=(J(11,1,6)-abs(x-J(11,1,7)))/36;
print p[rowname=char_x];

print 'Question 2(a)ii';
****************************************************************************;
* Note: You may use x=*-1 for the row number since the first category is x=2;
****************************************************************************;
Q2aiiA=p[7-1];
print Q2aiiA; 

print 'Question 2(a)iii';
****************************************************************************;
* Note: You may use x=*-1 for the row number since the first category is x=2;
****************************************************************************;
Q2aiiiA=sum(p[5-1:7-1]);
print Q2aiiiA; 

print 'Question 2(a)iv';
****************************************************************************;
* Note: You may use x=*-1 for the row number since the first category is x=0;
****************************************************************************;
F=cusum(p);
print F[rowname=char_x];

print 'Question 2(a)v';
Q2avA=F[8-1]-F[7-1];
Q2avB=1-F[3-1];
print Q2avA Q2avB; 

print 'Question 2(b)';
call randseed(615,1);

print 'Question 2(c)';
call randseed(823,1); C=randfun({1000,2},'TABLE',J(1,6,1)/6);
sum=C[,+];
create DICE from sum[colname={'sum'}];
append from sum;
quit;


