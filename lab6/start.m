%run this please and it takes time to compute the result
clear;
initial1=[20,1,0,0];
[tq,xq]=ode45(@cstr,[0:0.1:30],initial1);
xq(:,2)=[];
quasi;
subplot(2,1,1)
plot(tq,xq);
legend('biomass','substrate','product');
subplot(2,1,2)
plot(time,y,time,p);
legend('biomass','substrate','product');
