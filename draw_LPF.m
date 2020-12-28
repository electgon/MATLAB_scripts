%code to draw LPF in octave
%---------------------------
clear
figure('Name', 'LPF');

x=linspace(0,2000);
a=(x./1000).^2;
b=(1+a);
y=sqrt(1./b);
z=20*log10(y);
subplot(1,2,1);
semilogx(x,z);
title('Simple LPF');



%Code to draw 2nd order LPF:
%-----------------------------
clear
x=linspace(0,2000);
a=(x./1000).^2;
b=(1+a);
y=sqrt(1./b);
w=20*log10(y);
z=20*log10(y.*y);
subplot(1,2,2);
semilogx(x,z,"2",x,w,"3");
title('2nd order LPF');


%Code to draw 2nd order LPF with imaginary zero:(NOT WORKING)
%-----------------------------------------------
% clear
% x=linspace(0,10000);
% a=(x./1000).^2;
% c=(x./8000).^2;
% b=(1+a);
% d=(1+c);
% y=sqrt(1./b);
% v=sqrt(d);
% w=20*log10(y.*y);
% z=20*log10((y.*y).*v);
%
%
%
%
%Code to draw 2nd order Butterworth LPF:
%----------------------------------------
%clear;
%[a,b,c]=butter(2,100,'s');
%sys1=zpk(a,b,c);
%bode(sys1);