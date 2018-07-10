% a and b
umax=1;
ks=0.1;
yxs=0.5;
x0=0.1;
s0=5;
tspan=[0:0.1:20];
[t,x]=ode45(@(t,x) ((umax*(((x0-x)/yxs)+s0))/(ks+(((x0-x)/yxs)+s0)))*x, tspan,x0);
alpha=((ks*yxs)+(yxs*s0)+x0)/((yxs*s0)+x0);
beta=(ks*yxs)/(x0+yxs*s0);
y=x;
z=(1/umax)*((alpha*log(y/x0))-(beta*log(((yxs*s0)+x0-y)/yxs)));
subplot(2,1,1)
plot(t,x); %plots the numerical solution
subplot(2,1,2)
plot(z,y);   %plots the analytical soultion


