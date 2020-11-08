clc;
clear all;
close all;
h=[1 2 7];
x=[1 2 3 4];
m = length(h);
n = length(x);
cc = conv(x,h)
subplot(4,1,1)
stem(x)
title('x values')
subplot(4,1,2)
stem(h)
title('h values')
subplot(4,1,3)
stem(cc)
title('convolutionn by using conv')
h=[zeros(1,n-1) h zeros(1,n-1)];
for i=0:n-1
ax(i+1) = x(n-i);
end
for shift =0:n+m-1-1
new_x(shift+1,:)=[zeros(1,shift) ax zeros(1,n+m-1-shift-1)]
y= new_x(shift+1,:).*h;
yy(shift+1) = sum(y);
end
subplot(4,1,4)
stem(yy)
title('convolutionn without using conv')