function dydt1=chemostat(t,x)
yxs=0.08;
yps=0.45;
umax=0.33;
ks=1.7;
kd=0.01;
pstar=90;
m=0.03;
v=10;
d=0.5;
so=100;
un=umax*((1-(x(3)/pstar))^(0.52))*(x(2)/(ks+x(2)));
dydt1=[-d*x(1)+un*x(1);d*(so-x(2))-((un+kd)/yxs)*x(1)-((m/yps)*x(1));((un*x(1))/(yxs/yps))-x(3)*d];
end