y0=2;
h1=0.1;
Tspan=[0 8];
[T1 S1]=met_AB(@fun, Tspan, y0, h1);
h2=0.01;
[T2 S2]=met_AB(@fun, Tspan, y0, h2); 
 
%plot(T1,S1,T2,S2); legend({'h=0.1','h=0.01'});

[T3 S3]=met_PC(@fun, Tspan, y0, h1); 

 %plot(T3,S3); 
 
T=[0 60];
y0=[0.75 0.0 0 0];
SP=pend2(T,y0);
[t4 s4]=ode45(@pend2,T , y0);

plot(t4,s4(:,1),'r',t4,s4(:,2),'b');
%plot(t4(61),s4(61,1),'r',t4(61),s4(61,2),'b');