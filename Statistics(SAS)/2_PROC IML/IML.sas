proc iml;      *invokes PROC IML;
a=2;           *scalar;
b={1 2 3 4};   *1x4 row vector;
c={2,4,6,8};   *4x1 column vector;
d={1 0.2 0.8,
   0.2 1 0.4,
   0.8 0.4 1}; *3x3 correlation matrix vector;
print 'The matrices';
print a b, c d;
print 'Expresion should be in parenthesis:', (5*b) (b`+c);
quit;          *closes PROC IML;
