clc
clear all
close all
x=[3 5 6 7];
n1=0:1:3;
h=fliplr(x);
n2=-fliplr(n1);
subplot(3,1,1)
stem(x)
title('x values')
subplot(3,1,2)
stem(h)
title('y values')
z=[];
for i=1:length(x)
    g=h.*x(i);
    z=[z;g];
end
[r c]=size(z);
k=r+c;
t=2;
y=[];
cd=0;
while(t<=k)
    for i=1:r
        for j=1:c
            if((i+j)==t)
               cd=cd+z(i,j);
            end
        end
    end
    t=t+1;
    y=[y cd];
    cd=0;
end
nl=min(n1)+min(n2);
nh=max(n1)+max(n2);
t=nl:1:nh;
subplot(3,1,3) 
stem(t,y)
title('autocorrelation of x')
