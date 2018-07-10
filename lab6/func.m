function eq=func(x,t)
umax=0.3;
yxs=0.5;
ks=1;
ki=300;
sin=100;
f=0.2;
yxp=0.2;
vo=1;
v=f*t+vo;
u=(umax*x(2))/(ks+x(2)+((x(2)^2)/ki));
eq=[f-u*v;x(2)-sin+(u*x(1)*v)/(yxs*f)]; 
end
