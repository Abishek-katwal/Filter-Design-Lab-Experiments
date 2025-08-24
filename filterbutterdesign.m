clear all;
close all;
clc;
w = 0:1:100;
[num,den] = butter(2,10,'low','s');
tf = freqs(num,den,w);
mag = abs(tf);
figure;
semilogx(w,mag,'b-'); % b stands for blue and - stand for solid line (use help plot)
hold on; % in the same figure the next figure will be overlap
title('Butter function for designing nth order Butterworth filters')
xlabel('Frequecy(rad/sec)');
ylabel('Magnitude(dB)');

[num1,den1] = butter(6,10,'low','s');
tf = freqs(num1,den1,w);
mag = abs(tf);
semilogx(w,mag,'r--');

[num2,den2] = butter(14,10,'low','s');
tf = freqs(num2,den2,w);
mag = abs(tf);
semilogx(w,mag,'k-.');

legend('n=2','n=6','n=14'); %serially the notation will be provided in the table