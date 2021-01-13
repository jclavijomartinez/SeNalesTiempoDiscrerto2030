<<<<<<< HEAD
[uno fs1]=audioread('AudiosP3/1.wav');
[dos fs2]=audioread('AudiosP3/2.wav');
[tres fs3]=audioread('AudiosP3/3.wav');
[cuatro fs4]=audioread('AudiosP3/4.wav');
[barrido fs5]=audioread('AudiosP3/Barrido_incremental.wav');
[tonocuatrocuarenta fs6]=audioread('AudiosP3/tono_440.wav');
[tonopuro fs7]=audioread('AudiosP3/Tono_puro01.wav');
[num1 fs8]= audioread('SenalH20201028.wav');

%% XD
fs = 8000; %Frecuencia de muestreo
Ts= 1/fs; % Tiempo de muestreo
Td = 2; % Tiempo de duración
N=Td/Ts; %
f0 = 1000; % Frecuencia señal sinusoidal en Hz
A = 7; %Amplitud señal sinusoidal
t =[0:1/fs:Td-1/fs]; %Intervalo de tiempo
x = A*cos(2*pi*f0*t); % Señal sinusoida
figure(1)
subplot(2,1,1)
plot(t,x,'Color', [0.5,1.0,1.0],'LineWidth',3);
grid on
ax = gca; ax.FontSize = 12;
subplot(2,1,2)


%help
%{ 
xf=fft(x);
subplot(2,1,2)
f=[0:1/Td:fs-1/Td];
plot(f,abs(xf),'Color', [0.0,0.0,1.0],'LineWidth',2); % Magnitud de la FFT
grid on
ax = gca; ax.FontSize = 22;
%}

%leer los numeros del telefono
%{
[num1 fs1]=audioread('Senal20201028H.wav');
%fs = 8000; Frecuencia de muestreo
Ts= 1/fs1; % Tiempo de muestreo
N=length(num1);
Td =N*Ts; % Tiempo de duración
figure(1)
subplot(2,1,1)
t =[0:1/fs1:Td-1/fs1]; %Intervalo de tiempo
plot(t,num1,'Color', [0.5,1.0,1.0],'LineWidth',0.1);
grid on
subplot(2,1,2)
fftono=fft(num1);
f1=[(-fs1/2): 1/Td :(fs1/2 - 1/Td)];
stem(fftshift(f1),abs(fftono),'Color', [0.0,0.0,1.0],'LineWidth',0.1); % Magnitud de la FFT