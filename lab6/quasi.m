i=1;
for t=0.1:0.1:30
    f=@(x)func(x,t);
    options = optimoptions('fsolve'); 
options.MaxIterations = 1000;
options.MaxFunctionEvaluations = 5000;
    x=fsolve(f,[0,0],options);
    y(i,:)=x;
    time(i)=t;
     umax=0.3;
yxs=0.5;
ks=1;
ki=300;
sin=100;
f=0.2;
yxp=0.2;
vo=1;

    u=(umax*x(2))/(ks+x(2)+((x(2)^2)/ki));
    eq=@(j,z)u*x(1)*(vo+f*j)/yxp;
    tspan=0:0.001:t;
    [j,z]=ode45(eq,tspan,0);
    p(i)=z(end);
    p(i)=p(i)/(vo+f*j(end));
     i=i+1;
   end