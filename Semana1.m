clc
clear

Fs = 100;
T = 1/Fs;
r = 24;
Tc = 3;

t = 0:T:Tc;
N = length(t);
x = zeros(1,N);

for n=1:N
    if t(n)<=1.5
        x(n)=2;
    else
        x(n)=-2;
    end
end

figure();
plot(t,x);
title("Señal Original");
xlabel("Tiempo");
xlim([0 3]);
ylim([-3 3]);