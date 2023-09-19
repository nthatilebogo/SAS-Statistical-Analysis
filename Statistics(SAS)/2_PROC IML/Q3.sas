/***********************************************/
/* You can use this SAS program for Question 3 */
/***********************************************/

proc iml;
print 'Question 3';

print 'Question 3(a)';
x=4.2;
yvalue=-x##2+10*x-9;
derivative=-2#x+10;
print x yvalue derivative;

print 'Question 3(c)';
x1=2; x2=4;
y1=-x1##2+10*x1-9; y2=-x2##2+10*x2-9;
Q3ci=(y2-y1)/(x2-x1);
lower=-1/3#x1##3+5#x1##2-9#x1;
upper=-1/3#x2##3+5#x2##2-9#x2;
Q3cii=upper-lower;
print Q3ci Q3cii;


