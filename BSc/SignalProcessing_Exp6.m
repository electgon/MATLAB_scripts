%to run it simply Exp6 in command prompt

%Problem 6
  fsample=1500000;
     frmsz=128;
     fo=100000;
     t=(1:frmsz)/fsample;
     f=(1:frmsz/2)*fsample/frmsz;
     yt=sin(2*pi*fo*t);
     yf=abs(fft(yt));
	 figure('Name', '6-6', 'NumberTitle', 'off');
     subplot(2,2,1)
     plot(t,yt)
     subplot(2,2,2)
     plot(f,yf(1:frmsz/2))
     ct=sin(2*100000*pi*t);
     xt=yt.*ct;
     xf=abs(fft(xt));
     subplot(2,2,3)
     plot(t,xt)
     subplot(2,2,4)
     plot(f,xf(1:frmsz/2))

