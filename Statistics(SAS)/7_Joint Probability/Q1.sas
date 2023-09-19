proc iml;
print 'Practical 7';
print 'Q1';
f=j(3,3,.);
do x=0 to 2;
 do y=0 to 2;
   row=x+1; col=y+1;
   if x+y<=2 then
     f[row,col]=comb(3,x)*comb(2,y)*comb(4,2-x-y)/comb(9,2);
   else f[row,col]=0;
 end;
end;
print f;

print 'Q2';
Q2a=sum(f[1:2,2:3]);
print Q2a;  
