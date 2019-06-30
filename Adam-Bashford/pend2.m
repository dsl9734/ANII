function sp = pend2(t,s)
A=[6 cos(s(1)-s(2));2*cos(s(1)-s(2)) 1];

B=[-sin(s(1)-s(2))-3*9.8*sin(s(1)); 
    2*sin(s(1)-s(2))-9.8*sin(s(2))];
x=A\B;
sp=[s(3) s(4) x(1) x(2)]';
return