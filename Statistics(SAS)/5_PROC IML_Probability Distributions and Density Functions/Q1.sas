/***********************************************/
/* You can use this SAS program for Question 1 */
/***********************************************/

proc iml;
print 'Practical 5: Question 1';

print 'Question 1(a)';
xt=0:5; * row vector; print xt;
x=xt`;  * column vector;
p={0.18,0.39,0.24,0.14,0.04,0.01};
char_x='0':'5'; 
print 'The column vector x:' x 'The vector with probabilites:' p[rowname=char_x];

print 'Question 1(b)';
****************************************************************************;
* Note: You may use x=*+1 for the row number since the first category is x=0;
****************************************************************************;
Q1bi=p[3+1];
Q1bii=sum(p[1:3+1]);
print Q1bi Q1bii;

print 'Question 1(c)';
f=cusum(p);
print f[rowname=char_x];

print 'Question 1(d)';
****************************************************************************;
* Note: You may use x=*+1 for the row number since the first category is x=0;
****************************************************************************;
Q1div=f[3+1]-f[2+1];
Q1dv=f[3+1];
print Q1div Q1dv;

print 'Question 1(e)';
call randseed(101,1); 

print 'Question 1(f)';
call randseed(242,1); w=randfun(1000,'Table',p);
X=w-J(1000,1,1);
create DiCarlo from X[colname='Sold'];
append from X; 
print 'The 500th observation';
quit;

proc univariate data=DiCarlo;
var sold;
title 'Question 1(f)ii';
run;

