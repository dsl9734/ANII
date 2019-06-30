function sp = tres_cuerpos(t,s)

sp=NaN*s;

r1=[s(1) s(2)];
r2=[s(3) s(4)];
r3=[s(5) s(6)];

r12=r2-r1;
r13=r3-r1;
r23=r3-r2;

M1=1; 
M2=3*10^-6; 
M3=3*10^-7;

sp(1:6)=s(7:12);

sp(7:12)=[M1*0+M2*r12/norm(r12)^3+M3*r13/norm(r13)^3
   -M1*(r12/norm(r12)^3)+M2*0+M3*r23/norm(r23)^3 
   -M1*(r12/norm(r12)^3)-M2*(r23/norm(r23)^3)+M3*0] ;

end