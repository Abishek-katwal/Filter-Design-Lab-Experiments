clear all;
close all; 
clc;
R1 = 1000;
R2 = 1000;
C1 = 10^-6;
W = 0:50000;
num = [(R1*C1*R2) R2];
den = [(R1*C1*R2) (R1+R2)];
TF = freqs(num,den,W);
mag = abs(TF);
phase = angle(TF)*180/pi;
subplot(2,1,1);
semilogx(W,mag); %logscale along x-axis to visualize larger value to smaller value
title('Magnitude Response');
xlabel('Frequency(rad/sec)');
ylabel('Magnitude(dB)');
grid on;
subplot(2,1,2);
semilogx(W,phase);
title('phase Response');
xlabel('Frequency(rad/sec)');
ylabel('phase(rad)');
grid on;

