function sp=sat2(t,s)  
dt=(8-7.73)/0.01;
t0=0;
GM = 3.9860e5;
r=s(1:2); r2=s(3:4); 
if (t>t0) && (t<(t0+dt))
am = -0.01*r/norm(r);
sp(1:2) = r2;
sp(3:4) =(-GM*r/norm(r)^3)-am; 
end
return
end
