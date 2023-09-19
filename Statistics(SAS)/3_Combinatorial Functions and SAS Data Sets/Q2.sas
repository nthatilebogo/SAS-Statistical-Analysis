/***********************************************/
/* You can use this SAS program for Question 2 */
/***********************************************/

proc iml;
print 'Question 2';
print 'Question 2(a)';
c={'c1' 'c2'};
v={'v1' 'v2' 'v3'};
d={'d1' 'd2' 'd3' 'd4' };
Q2ai=ncol(c)#ncol(v)#ncol(d);
print 'Q2ai' Q2ai 'or' (2#3#4);
print 'The matrices:', c, v, d;
print 'All the experimental outcomes';
do i=1 to ncol(c); * Use NCOL function to calculate # columns;
  do j=1 to ncol(v);
    do k=1 to ncol(d);
      print (c[i]) (v[j]) (d[k]);
    end;
  end;
end;
print 'Question 2(b)';
