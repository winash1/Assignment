% c
umax=1;
ks=0.1;
yxs=0.5;
x0=0.1;
s0=5;
tspan=[0:0.1:20];
d=0.8;   % for d=0.8
tt=d*(x0-x)+(((umax*(((x0-x)/yxs)+s0))/(ks+(((x0-x)/yxs)+s0)))*x);
[t,x]=ode45(@(t,x) d*(x0-x)+(((umax*(((x0-x)/yxs)+s0))/(ks+(((x0-x)/yxs)+s0)))*x),tspan,x0); %biomass equation
[z,s]=ode45(@(z,s) (-(d*(x0-((s0-s)*yxs+x0))+(((umax*s)/(ks+s))*((s0-s)*yxs+x0))))/yxs,tspan,s0);  % substrate equation
plot(z,s,t,x);


        

