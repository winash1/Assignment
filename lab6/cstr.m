function dydt=cstr(tq,xq)
umax=0.3;
yxs=0.5;
ks=1;
ki=300;
sin=100;
f=0.2;
yxp=0.2;
u=(umax*xq(3))/(ks+xq(3)+((xq(3)^2)/ki));
dydt=[u*xq(1)-(f*xq(1)/xq(2));f;f*(((sin-xq(3))/xq(2)))-((u/yxs)*xq(1));((u*xq(1))/yxp)-(f*xq(4))/xq(2)];
    
    
