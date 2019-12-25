%to run it simply P9 in command prompt

%Problem 9-A
t=-0.5:0.01:4;
n=length(t);
u=t.*0;
for i=1:n
    if t(i)>=0
       u(i)=1;
    end
end
d=3*exp(-2*t).*u;
figure(1);
plot(t,d);


%Problem 9-B
t=-0.5:0.01:4;
n=length(t);
u=t.*0;
for i=1:n
    if t(i)>=0
       u(i)=1;
    end
end
e=2*[1-exp(-1.8*t)].*u;
axis([-.5,4,-1,5]);
grid;
% figure(2);
figure('Name', 'B');
plot(t,e);

%Problem 9-C
t=-0.5:0.01:4;
n=length(t);
u=t.*0;
  for i=1:n
    if t(i)>=0
       u(i)=1;
    end
  end
f=2*exp(-1.8*t).*cos(10*t-(22/28)).*u;
% figure(3);
figure('Name', '9-C');
plot(t,f)

%Problem 9-D
t=-0.5:0.01:4;
n=length(t);
u=t.*0;
for i=1:n
    if t(i)>=0
       u(i)=1;
    end
end
g=exp(-1.01*t).*cos(8*t+(22/35)).*u;
% figure(4);
figure('Name', '9-D', 'NumberTitle', 'off');
plot(t,g)
