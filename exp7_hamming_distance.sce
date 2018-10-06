clc ;
clear all;
// Getting Code Words
code1 = input ('Enter the 1st Code Word ') ;
code2 = input ('Enter the 2nd Code Word ') ;
Hamming_Distance = 0;
for i = 1:length (code1)
 Hamming_Distance = Hamming_Distance + bitxor(code1(i),code2(i)) ;
end
disp (Hamming_Distance, 'Hamming Distance')
