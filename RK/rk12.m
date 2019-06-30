function [T,S]=rk12(f,Tspan,y0,h)
t0=Tspan(1); tfin=Tspan(2);
T=[t0:h:tfin]; N = length(T); % Tiempos {Tk}
n = length(y0); % n = tama o y0 = dimensi n problema.
S=NaN*zeros(n,N); % Reservo matriz n x N de soluciones
S(:,1) = y0; % Vector condici n inicial -> 1  columna de S
for k=1:N-1,  % Iteracion para calcular y(k+1)  

  tt=T(k); yy=S(:,k);  % Punto de partida (tk,yk)   
                  
  K1 = f(tt,yy);             % 1  eval de f(t,y) al inicio
  m = K1; delta=h/2;  
  K2 = f(tt+delta,yy+delta*m);  % 2  evaluaci n en h/2
 m=K2; delta=h/2;
 K3 = f(tt+delta,yy+delta*m);
 m=K3; delta=h/2;
 K4 = f(tt+delta,yy+delta*m);
 
 m=K4; delta=h/2;
 K5 = f(tt+delta,yy+delta*m);
 
 m=K5; delta=h/2;
 K6 = f(tt+delta,yy+delta*m);
 
 m=K6; delta=h/2;
 K7 = f(tt+delta,yy+delta*m);
 
 m=K7; delta=h/2;
 K8 = f(tt+delta,yy+delta*m);
 
 m=K8; delta=h/2;
 K9 = f(tt+delta,yy+delta*m);
 
 m=K9; delta=h/2;
 K10 = f(tt+delta,yy+delta*m);
 
 m=K10; delta=h/2;
 K11 = f(tt+delta,yy+delta*m);
 
 m=K11; delta=h;
 K12 = f(tt+delta,yy+delta*m);
  
  K=(K1+2*K2+2*K3+2*K4+2*K5+2*K6+2*K7+2*K8+2*K9+2*K10+2*K11+K12)/22;        % Pendiente media a usar = promedio de K1, K2, ...
 
  S(:,k+1) = yy + h * K;  % Siguiente valor y(k+1) 
end 

return