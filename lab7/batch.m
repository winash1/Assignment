function dydt=batch(t,x)
yxs=0.08;
yps=0.45;
umax=0.33;
ks=1.7;
kd=0.01;
pstar=90;
m=0.03;
v=10;
u=umax*((1-(x(3)/pstar))^(0.52))*(x(2)/(ks+x(2)));
rg=u*x(1);
rd=kd*x(1);
rm=m*x(1);
dydt=[rg-rd;((1/yxs)*(-rg))-rm;(yps/yxs)*rg];
end

