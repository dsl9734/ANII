J=4.0*10^-7; %g.cm^2
R=1.5;%ohmios
Kt=6*10^-3;%(Nm/A)
b=1.5*10^-7;%(kgm^2/s)
L=0.1*10^-3; %miliHenrios
V=5;%V

y=[b -Kt;Kt R];
b=[0;V];
[L U]=lu(y);
x1=L\b;
X=U\x1;

rpm_1=X(1, :)*(1/2*pi)*60%revoluciones por minuto
mA=X(2, :)*10^-3

s=[0 0];
[T S]=euler(@motor,[0,1],s,0.00001);

rpm=60/(2*pi)*S(1,:);

figure(1);
plot(T,rpm);
figure(2);
plot(T,S(2,:));

intensidad=S(2,:);

Maximo=max(rpm);
q=find(rpm==Maximo,1);
intensidad(q);
w=intensidad(q)*V;%potencia en el momento de mayor velocidad
Vec_w=intensidad*V;
Max_w=max(Vec_w);
Max_i=max(intensidad);
V_63=Maximo*0.63;
Instante_V63=find(rpm>=V_63,1);
Instante_V63=Instante_V63*10^-2;


s=[0 0];
[T_2 S_2]=euler(@motor2,[0,1],s,0.00001);
rpm_2=60/(2*pi)*S_2(1,:);
Max_rpm2=max(rpm_2);
I_instatante2=find(rpm_2==Max_rpm2,1);



s=[0 0];
[T_3 S_3]=euler(@motor3,[0,1],s,0.00001);
rpm_3=60/(2*pi)*S_3(1,:);

figure(3);
plot(T_3,rpm_3);
Max_rpm3=max(rpm_3);
Vel_med=sum(rpm_3)/length(rpm_3);
V_3=voltaje(T_3);
V_max=max(V_3);
V_instante3=find(V_3==V_max,1);
V_instante3=V_instante3;
rpm_instante3=find(rpm_3==Max_rpm3,1);
Diff3=abs(V_instante3-rpm_instante3)*10^-2%ms
figure(4)
plot(T,rpm_3,'b');
figure(5)
plot(T,V_3,'g');


P=V_3.*S_3(2,:);
Max_P=max(P);
Max_P(1)
P_med=sum(P)/length(P)

figure(6)
plot(T,P)
title('Potencia consumida en el tiempo')

t_neg=find(P<0);
porc_neg=length(t_neg)/length(P)*100


[T_4 S_4]=euler(@motor4,[0,1],s,0.00001);
V_4=voltaje2(T_4);
rpm_4=60/(2*pi)*S_4(1,:);
figure(7);
plot(T,rpm_4);
Pot_4=V_4.*S_4(2,:);
figure(8);
plot(T,Pot_4);
Vel_med4=sum(rpm_4)/length(rpm_4);
Pot_med4=sum(Pot_4)/length(Pot_4);



