function [T S]=adapta12(fun,Tspan,y0,tol)
%Metodo adaptativo basado en Heun + Euler
% fun   -> funcion con la ec. diferencial
% Tspan -> intervalo [a,b] donde resolver
% y0    -> condición inicial
% tol   -> cota del error relativo (p.e 1e-3 o 1e-5)


% Ptos inicial y final del intervalo a resolver 
T0=...
T_fin=... 

% Inicialización de h
h = ...

% Inicializar las salidas T y S con los valores iniciales 
T = ...
S = ...  

while(T(end)<T_fin)
 
 % Parto del ultimo punto de la solución     
 t=T(end); y=S(:,end);  
 
 % Calcular Euler y Heun en t+h a partir de punto partida (t,y)
 
 
 % Calcular estimacion error relativo E
 
 
 % Calcular ratio r entre E y tol 
 

 if ratio<=1,   % Paso aceptado, añadir los nuevos valores a T y S
 
  
 end 
 
 % Actualizar h usando la formula optima con un factor 0.9 para estar seguros.
 
end

% Dejar esta parte para el final, despues de haber visto la aplicación
% Recalcular el último paso para asegurarnos que T(end) = T_fin = fin intervalo


return