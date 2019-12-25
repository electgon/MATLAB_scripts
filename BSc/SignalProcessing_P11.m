%to run it simply P9 in command prompt

%Problem 11-A
n=0:20;
a=4*ones(size(n));
a(1:3)=zeros(1,3);
c=2*ones(size(n));
c(1:6)=zeros(1,6);
b=(n-6).*c;
d=2*ones(size(n));
d(1:8)=zeros(1,8);
e=(n-8).*d;
f=a-b+e;
figure(1);
stem(n,f)


%Problem 11-B
n=0:20;
a=ones(size(n));
a(1:8)=zeros(1,8);
b=ones(size(n));
b(1:6)=zeros(1,6);
c=b-a;
d=2*(n-6).*c;
e=ones(size(n));
e(1:3)=zeros(1,3);
f=4*(e-b);
g=f-d;
figure('Name', '11-B', 'NumberTitle', 'off');
stem(n,g)

%Problem 11-C
n=-7:20;
a=ones(size(n));
a=zeros(size(n));
a(18:28)=ones(1,11);
b=(n-10).*a;
c=ones(size(n));
c(1:7)=zeros(1,7);
d=3*n.*c;
e=ones(size(n));
e(1:2)=zeros(1,2);
f=2*(n+5).*e;
g=f-d+b;
figure('Name', '11-C', 'NumberTitle', 'off');
stem(n,g)

%Problem 11-C
n=-5:15;
a=zeros(size(n));
a(16:21)=ones(1,6);
b=ones(size(n));
b(1:5)=zeros(1,5);
c=3*n.*[b-a];
d=ones(size(n));
e=2*(n+5).*[d-a];
f=e-c;
figure('Name', '11-D', 'NumberTitle', 'off');
stem(n,f)
