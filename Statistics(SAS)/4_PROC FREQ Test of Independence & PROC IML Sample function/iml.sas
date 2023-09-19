/***************************************/
/* PROC IML: Sample Function          */
/***************************************/

proc iml;
x = 1:5;
print x;
call randseed(111,1); s1=sample(x);
call randseed(222,1); s2=sample(x,5,"Replace",{0.6 0.1 0.0 0.1 0.2});
call randseed(333,1); s3=sample(x,3,"NoReplace");
call randseed(444,1); s4=sample(x,{3,10},"Replace");
call randseed(555,1); s5=sample(x,{3,10},"NoReplace");
print s1,s2,s3,'Replacement' s4 'No replacement' s5;
