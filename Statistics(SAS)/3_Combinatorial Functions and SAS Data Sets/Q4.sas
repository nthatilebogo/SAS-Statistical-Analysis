/***********************************************/
/* You can use this SAS program for Question 4 */
/***********************************************/

data marks;
input x y;
datalines;
58    66
60    67
52    55
57    68
57    74
54    55
76    81
35    56
54    66
68    78
66    74
66    63
55    69
58    79
52    64
56    59
58    65
55    61
58    58
66    68
56    58
60    66
68    76
93    85
68    73
42    55
48    61
59    65
57    67
64    57
68    71
66    66
57    65
39    55
77    81
62    68
63    73
68    65
64    75
70    76
74    75
53    60
90    84
35    42
65    67
;
proc univariate data=marks;
var x y;
title 'Question 4(a)';
run;

proc corr data=marks cov;
var x y;
title 'Question 4(b)';
run;

proc iml;
print 'Question 4(c)';
use marks;
read all var{x y} into m;
print (m[1:5,]);
n=nrow(M);

x=m[,1]; 

sumx=sum(x);
sumx2=x`*x;
sumx10_20=sum(x[10:20]);
xbar=sumx/n;
cssx=(x-J(n,1,xbar))`*(x-J(n,1,xbar));
varx=cssx/(n-1);
stdx=sqrt(varx);
print sumx sumx2 sumx10_20 xbar cssx varx stdx;

mean=mean(M);
var=var(M);
std=std(M);
cov=cov(M);
corr=corr(M);
print mean var std, cov corr;
quit;


