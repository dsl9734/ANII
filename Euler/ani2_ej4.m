J=4.0; %g.cm^2
R=1.5;%ohmios
Kt=6*10^-3;%(Nm/A)
b=1.5*10^-7;%(kgm^2/s)
L=0.1 ;%miliHenrios
V=5;%V

A=[b -Kt;Kt R];
b=[0 ;V];
n=length(b);
d=det(A);
x=zeros(n,1);
for i=1:n
    Ab=[A(:,1:i-1),b,A(:,i+1:n)];
    x(i)=det(Ab)/d;
end

disp('Solución');
disp(x);
rpm=x(1)*(1/2*pi)*60
mA=x(2)*10^3