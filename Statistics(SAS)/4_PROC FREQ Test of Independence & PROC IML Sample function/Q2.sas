/***********************************************/
/* You can use this SAS program for Question 2 */
/***********************************************/

proc iml;
print 'Question 2';

print 'Question 2(a)i';
A={5,5,3,3}; first=A/8;
B={4,3,5,2}; second=B/7;
prob=first#second;
names={BB BG GB GG};
print 'Theoretical Probabilities: Without Replacement', prob[rowname=names format=6.4];

S={B B B B B G G G}; *5 brown socks and 3 green socks;
call randseed(612,1); X=sample(S,{2,10000},"NoReplace");
print 'Rows 101 to 105 of X: ' (X[101:105,]);
create socks from X[colname={sock1 sock2}];
append from X;
quit;

data new1; set socks;
if sock1='B' and sock2='B' then twosocks='BB';
if sock1='B' and sock2='G' then twosocks='BG';
if sock1='G' and sock2='B' then twosocks='GB';
if sock1='G' and sock2='G' then twosocks='GG';
run;

proc freq data=new1;
tables twosocks;
title 'Empirical Probabilities: Without Replacement';
run;
