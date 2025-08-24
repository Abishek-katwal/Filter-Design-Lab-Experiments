clear all; 
close all;
clc;
w = 0: 0.1: 100000;
%butterworth filter
[num,den] = butter(5,100,'low','s');
tf = freqs(num,den,w);
mag = abs(tf);
semilogx(w,mag,'k-');
hold on;
title('Comparision of Butterworth,Chebyshev and Inverse Chebyshev Filters');
xlabel('frequency(rad/sec)');
ylabel('magnitude(dB)');


%chebyshev low pass filter
[num1,den1] = cheby1(5,0.5,100,'low','s');%(order,gain(dB),cutofffrequency)(help cheby1 in command window) cheby1()is the function to generate the chebyshev filter
tf1= freqs(num1,den1,w);
mag1= abs(tf1);
semilogx(w,mag1,'r-.');

%inverse chebyshev filter
[num2,den2] = cheby2(5,20,100,'low','s'); %here the gain for the inverse chebyshev is 20dB when not know  to us
tf2= freqs(num2,den2,w);
mag2 = abs(tf2);
semilogx(w,mag2,'b--');