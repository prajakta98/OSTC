Fs = 100; 
msg = [0 1 1 0 1 0 1 0 0 1 0]; 
A_freq = 3; 
b_msg = []; 
ask_msg = []; 
t = 0:1/Fs:1-1/Fs; 
for cnt = 1:length(msg) 
if msg(cnt) == 0; 
b_msg = [b_msg zeros(1,Fs)]; 
ask_msg = [ask_msg 1.*sin(2*%pi*A_freq*t)]; 
else 
b_msg = [b_msg ones(1,Fs)]; 
ask_msg = [ask_msg 2.*sin(2*%pi*A_freq*t)]; 
end 
end 
subplot(211); 
plot(b_msg);mtlb_axis([0,length(b_msg),-1,2]) 
title('Binary Message'); 
subplot(212); 
plot(ask_msg); title('ASK Signal'); 
