GM = 3.9860e5;  
Rt=6370; 
R0=Rt+300; 
s0 = [R0 0 0 8]'; 
r=sat(0,s0);
t=0;
[T S]=euler(@sat,[0,4*3600],s0,0.1);
%plot(S(1,:),S(2,:));

th=linspace(0,2*pi,500);
%plot(S(1,:),S(2,:),'r',Rt*cos(th),Rt*sin(th),'b');

[T1 S1]= rk4(@sat,[0,4*3600],s0,0.1);
plot(S1(1,:),S1(2,:));
%plot(S(1,:),S(2,:),'r',Rt*cos(th),Rt*sin(th),'b');

%plot(T1,S1(2,:));
q=find(S1(2,:)==6670);
%[T2 S2]= rk4(@sat2,[0,4*3600],s0,0.1);
%plot(S2(1,:),S2(2,:));