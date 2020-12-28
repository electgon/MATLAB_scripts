clear;
vi=linspace(0,2000);

a=(500/1000)^2;
b=(1+a);
y=sqrt(1/b);
vo=y.*vi;
subplot(1,2,1);
plot(vi,vo);
title('sqrt of 1+a');


clear;
I=linspace(0,2000);
R=1000;
E=1./I;
V=R.*I;
subplot(1,2,2);
plot(I,V);
title('Transfer function of a 1 KOhm Resistor');