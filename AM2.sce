// generate carrier signal
fc = 5000;
Ac = 9;
t = linspace(0,10*(10^(-3)),500);
Vc = Ac*sin(((2*%pi)*fc)*t);
subplot(411)
plot(t,Vc)
// generate modulating signal
fm = 500;
Am = 9;
Vm = Am*sin(((2*%pi)*fm)*t);
subplot(412)
plot(t,Vm)

// generate modulation signal with index modulation m = 0.5
 m= Am/Ac;
Vt = (Ac*(1+m*sin(((2*%pi)*fm)*t))) .*sin(((2*%pi)*fc)*t);
subplot(413)
plot(t,Vt)
