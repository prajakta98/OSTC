clc ;clf ;clear all;
a =input('Enter the amplitude of message signal:');
t =0:( %pi /4) :(4* %pi );
y = a *sin (2* t );
plot (t,y);
xlabel('Time--->');
ylabel('Amplitude--->');
title('Triangular Wave Signal--->');
