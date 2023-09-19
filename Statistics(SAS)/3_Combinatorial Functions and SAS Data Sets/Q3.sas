/***********************************************/
/* You can use this SAS program for Question 3 */
/***********************************************/

proc iml;
print 'Question 3';
print 'Question 3(a)' (fact(7));

print 'Question 3(b)';
S={C A R D};
Q3bi=(perm(4,4));
call randseed(425,1); Q3bii=ranperm(S);
call randseed(513,1); Q3biii=ranperm(S,10);
print Q3bi Q3bii 'First five obs of Q3biii:' (Q3biii[1:5,]);
call randseed(876,1); x=ranperm(S,1000);
r=concat(x[,1],x[,2],x[,3],x[,4]);
print 'Question 3(b)ivA ' (X[100,]);
create ddd from r[colname={letters}];
append from r;
quit;

proc freq data=ddd;
tables letters;
title 'Question 3(b)iv';
run;

proc iml;
print 'Question 3(c)';
S={B O O K};
*** Create the SAS data set DDD ***;
quit;

proc freq data=ddd;
tables letters;
title 'Question 3(c)ii';
run;

