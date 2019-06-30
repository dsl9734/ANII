clear;
GM = 3.9860e5;  % unidades de km y sec
Rt=6370;  % Radio terrestre.
R0=Rt+300;  % radio inicial (300 km altura)
s0 = [R0 0 0 8]';  % pos inicial = (R,0)  vel inicial=(0, 8)

[T S]=euler(@sat,[0,4*3600],s0,0.1);

th=linspace(0,2*pi,500); 
% figure(1);
% plot(Rt*cos(th),Rt*sin(th),'b', S(1,:),S(2,:));
% 
[T1 S1] = rk4(@sat,[0 4*3600],s0,0.1);
% figure(2);
% plot(Rt*cos(th),Rt*sin(th),'r', S1(1,:),S1(2,:));


%figure (3);
%plot(S(1,:),S(2,:),'r',S1(1,:),S1(2,:),'b');

[T2 S2] = rk4(@sat2,[0 4*3600],s0,0.1);

figure (4);
plot(Rt*cos(th),Rt*sin(th),'b', S2(1,:),S2(2,:),'r');