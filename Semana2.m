clc
clear

%parametro de la onda
A = 1;  %Amplitud   dB
Fo = 20000; %Frecuencia de la onda 500 - 20000 Hz
To = 1/Fo;  %Periodo de la onda
phi = pi/10;%Desfase de la onda

%parametros del muestreador
Fs = 44100; %Frecuencia de muestreo
T = 1/Fs;   %Periodo de muestreo
Tc = 1; %Tiempo de captura
r = 24; %numero de bits

t = 0:T:Tc;
x = A*cos(2*pi*Fo*t + phi);

figure();
plot(t,x,linewidth=2);
title("Señal en el tiempo");
xlabel("Tiempo(s)");
ylabel("Amplitud(v)");
grid on;

figure();
subplot(3,1,1);
plot(t,x,linewidth=2);
title("Señal en el tiempo");
xlabel("Tiempo(s)");
ylabel("Amplitud(v)");
grid on;
subplot(3,1,2);
plot(t,x,linewidth=2);
hold on;
stem(t,x,linewidth=2);
title("Proceso de muestreo");
xlabel("Tiempo(s)");
ylabel("Amplitud(v)");
grid on;
subplot(3,1,3);
stem(t,x,linewidth=2);
title("Señal discreta");
xlabel("Tiempo(s)");
ylabel("Amplitud(v)");
grid on;

%configuracion de reproduccion
A = audiodevinfo();
ID_0 = 2;

reproductor = audioplayer(x,Fs,r,ID_0);
play(reproductor)