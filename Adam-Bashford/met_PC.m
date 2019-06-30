
function [T S]=met_PC(fun, Tspan, y0, h) 
inicio=Tspan(1);
fin=Tspan(2);
T=[inicio:h:fin];

N=length(T);
S=0*T;
F=0*T;
S(1)=y0;
[t3 s3]=ode23(fun, T(1:3),y0);
S(1:3)=s3(1:3)';
 
for k=1:3, F(k)=fun(T(k),S(k)); end
 
for k = 3 : N-1
    P=S(k)+h/12*(23*F(k)-16*F(k-1)+5*F(k-2));
    delta=1;
    while(delta>10^-4)
       P1=S(k)+ h/2*(fun(T(k+1),P)+F(k));
       delta = abs (P1-P);
      P=P1;
    end
    
    S(k+1)=P1;
    F(k+1)=fun(T(k+1),S(k+1));
end
return