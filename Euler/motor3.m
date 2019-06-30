function sp=motor3(t,s)
J=4.0*10^-7; %g.cm^2
R=1.5;%ohmios
Ke=6*10^-3;%(Nm/A)
Kt_2=0.9*Ke;
b=1.5*10^-7;%(kgm^2/s)
L=0.1*10^-3; %miliHenrios
V_3=voltaje(t);
I=s(2);
w=s(1);

    sp=0*s;
    sp(1)=((Kt_2*I)-(b*w))/J;
    sp(2)=((-R*I)+V_3-(Ke*w))/L;
return
end
