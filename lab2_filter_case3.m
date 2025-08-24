clear all;
close all; 
clc;
R1=1000;
R2=1000;
C1=10^-6;
W=0:50000;
mag=(sqrt(1+(1./(R1*C1*W).^2)))./(sqrt(1+(1./(R2*C1*W).^2)+(1./(R1*C1*W).^2)));
subplot(2,1,1);
semilogx(W,mag); %logscale along x-axis to visualize larger value to smaller value
title('Magnitude Response');
xlabel('Frequency(rad/sec)');
ylabel('Magnitude(dB)');
grid on;
phase=(atan((R1*W*C1))-atan((W*R1*R2*C1)/(R1+R2)) ).*180/pi;
subplot(2,1,2);
semilogx(W,phase);
title('phase Response');
xlabel('Frequency(rad/sec)');
ylabel('phase(rad)');
grid on;

