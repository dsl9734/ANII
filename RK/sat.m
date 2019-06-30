function sp = sat(t,s)
sp = NaN*s;
GM = 3.9860e5;
r=[s(1) s(2)];
r2=-GM*r/norm(r)^3;
sp= [s(3) s(4) r2]';
end

