[prueba, path]= uigetfile('*.wav');
[audio fs1]=audioread(prueba);
Ts= 1/fs1;
N=length(audio);
Td =N*Ts;
deltaf= 1/Td;
transformada=fft(audio);
f1=[(-fs1/2): 1/Td :(fs1/2 - 1/Td)];
Y=abs(transformada)/N;
figure(1)
subplot(2,1,1)
cambio=fftshift(f1);
stem(cambio,Y,'Color', [0.0,0.0,1.0],'LineWidth',0.1);
subplot(2,1,2)
f=[0:1/Td:fs1-1/Td];
stem(f,Y,'Color', [0.0,1.0,1.0],'LineWidth',0.005);