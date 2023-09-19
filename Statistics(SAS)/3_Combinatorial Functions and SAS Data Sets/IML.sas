options nocenter;
/***************************************/
/* Combinatorial Functions             */
/***************************************/
 
proc iml;
call randseed(135,1);
a = ranperm({C B A}, 5);
print a;
call randseed(246,1);
b = rancomb({A B C D}, 3, 7);
print b;
call randseed(123,1);
c = ranperk({A B C D E}, 3, 7);
print c;
x=fact(5);
y=perm(5, 2);
z=comb(20, 4);
print x y z;

/***************************************/
/* Working with SAS datasets           */
/***************************************/ 

proc iml;
weight={
189 165,
145 124,
210 192,
194 177,
127 118};
matrix_kg=round(0.453592*weight); * Scalar multiplication;
create data_kg from matrix_kg[colname={'start' 'end'}];
append from matrix_kg;
quit;

proc print data=data_kg;
title 'Health Club Data';
run;

data health; set data_kg;
loss=start-end;
run;

proc iml;
use health;
read all var{start end loss} into a;
print a;
quit;
