%This is the script. run this please directly 
clear;
pstar=90;
umax=0.33;
ks=1.7;
kd=0.01;
m=0.03;
initial=[1,250,0];
[t,x]=ode45(@batch,[0:0.001:12.995],initial);
alpha=umax*(1-(x(:,3)/pstar)).^(0.52);
beta=(x(:,2)+ks);
u=alpha./(x(:,2)./beta);
rd=kd*x(:,1);
rm=x(:,1)*m;
initialn=[x(end,1),x(end,2),x(end,3)];
[tn,xn]=ode45(@chemostat,[0:12],initialn);
subplot(3,1,1)
plot(t,x);
legend('biomass','substrate','product');
title('part a') ;
subplot(3,1,2)
plot(t,u,t,rd,t,rm);
title('part b');
legend('u','rd','rm');
subplot(3,1,3)
plot(tn,xn);
title('part c') % i have taken the initial product, substrate and biomass concentration from the batch part 
legend('biomass','substrate','product');


