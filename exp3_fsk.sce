clear;
clc;
f = input('Enter the Analog Carrier Frequency in Hz: ');
t = 0:1/512:1;
x = sin(2*%pi*f*t);
I = input('Enter the Binary Digital Data: ');
fsk = [];
x1 = sin(2* %pi*f*t);
x2 = sin(2* %pi *(2*f)*t);
for n = 1: length(I)
    if (I(n)==1)
        fsk = [fsk ,x1];
    elseif (I(n)~=1)
        fsk = [fsk ,x2];
    end
end
plot(fsk)
xtitle('Frequency Shift Keying')
ylabel ('Amplitude in Volts')
xlabel ('Frequency in Hertz')
