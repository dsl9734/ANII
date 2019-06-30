function sp=motor(t,s)
J=4.0*10^-7; %g.cm^2
R=1.5;%ohmios
Kt=6*10^-3;%(Nm/A)
b=1.5*10^-7;%(kgm^2/s)
L=0.1*10^-3; %miliHenrios

I=s(2);
w=s(1);
V=5;
    sp=0*s;
    sp(1)=((Kt*I)-(b*w))/J;
    sp(2)=((-R*I)+V-(Kt*w))/L;
return
end

