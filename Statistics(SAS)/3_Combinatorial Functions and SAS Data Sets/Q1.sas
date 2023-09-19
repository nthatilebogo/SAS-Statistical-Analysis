/***********************************************/
/* You can use this SAS program for Question 1 */
/***********************************************/

proc iml;
print 'Question 1';
x=1:49;
print 'Question 1(a)';
call randseed(711,1); Q1a=rancomb(x,6);
print Q1a;
print 'Question 1(b)';
call randseed(219,1); Q1bi=rancomb(x,6,10);
Q1bii=Q1bi[3,2];
Q1biv=Q1bi[5,];
Q1bvi=Q1bi[,1];
print Q1bi Q1bii;
print Q1biv, Q1bvi; 
print 'Question 1(c)';
print 'Question 1(d)';
