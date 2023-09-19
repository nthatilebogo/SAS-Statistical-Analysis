/***********************************************/
/* You can use this SAS program for Question 2 */
/***********************************************/

proc iml;
print 'Question 2';
M={2 6 1 2,
   0 1 3 5,
   2 7 6 0};
print 'Question 2(a)', M;

r={AEG, Mercury, KIC};
c={Ordinary A500 B500 C600};
print 'Question 2(b)', M[rowname=r colname=c];

Q2c=M[3,2];
print 'Question 2(c)' Q2c 'or' (M[3,2]);

Q2e=M[3,+];
print 'Question 2(e)' Q2e 'or' (M[3,+]);

print 'Question 2(g)';
sumM=sum(M); 
maxM=max(M); 
minM=min(M); 
print sumM, maxM, minM;

print 'Question 2(h)';
Mtot=M[+];
Mrtot=M[,+];
Mctot=M[+,];
print 'March', Mtot Mrtot[rowname=r] Mctot[colname=c];

print 'Question 2(i)';
Jc4=j(4,1,1);
Jr3=j(1,3,1);
print 'Vectors of ones' Jc4 Jr3;
row_tot=M*Jc4;
col_tot=Jr3*M;
tot=Jr3*M*Jc4;
print 'March: Totals' row_tot col_tot tot;
print 'March: Totals', tot row_tot[rowname=r] col_tot[colname=c];
print 'Question 2(j)';






