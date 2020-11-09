fm=5;
fc=100;
kf=25
Am=3;
B=kf*Am/fm;
t=0:0.001:1;
m=3*cos(2*pi*fm*t);
subplot(4,1,1);
plot(t,m);
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');
grid on;
 
c=cos(2*pi*fc*t);
subplot(4,1,2);
plot(t,c);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');
grid on;

y=cos(2*pi*fc*t+(B*sin(2*pi*fm*t)));
subplot(4,1,3);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('FM Signal');

x=diff(y);
z=abs(x);
[b,a]=butter(10,0.056);
s1=filter(b,a,z);
subplot(4,1,4);
plot(s1);
title('demodulation');
grid on
