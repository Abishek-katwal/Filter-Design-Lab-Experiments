clear all;
clc;
close all;
A=1;
f=2;
fs=20*f;
t=1/fs:1/fs:1;
y=A*sin(2*pi*f*t);
subplot(2,1,1)
plot(t,y);
xlabel('t');
ylabel('y');
title('Abishek Katwal 020-401');
subplot(2,1,2);
stem(t,y);
xlabel('t');
ylabel('y');
title('Abishek Katwal 020-401');
