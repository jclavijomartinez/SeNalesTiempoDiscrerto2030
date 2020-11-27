%% gráfica de la FFT
clc;
load('FiltroFIRP4.mat');
load('FiltroIIRP4.mat');
disp('Proyecto de aprendizaje 4 - Señales de Tiempo Discreto')
disp('Desarrollado por: Santiago Mesa, Fabio Sánchez y Juan Sebastián Clavijo')
[XIN fs1]=audioread('Party_ruido_barrido.wav');
Ts= 1/fs1;
N=length(XIN);
Td =N*Ts;
deltaf= 1/Td;
transformada=fft(XIN);
Y=abs(transformada)/N;
disp('Pulse cualquier tecla para ver la gráfica de la FFT');
pause
figure
f=[0:1/Td:fs1-1/Td];
stem(f,Y,'Color', [0.0,1.0,1.0],'LineWidth',0.005);
title('Gráfica de la FFT del audio')
disp('Se puede observar que las frecuencias del ruido van aproximadamente desde:');
disp('los 5 kHz hasta los 9 kHz');
%% menú de ejecución
while 1
    disp('Estas son las opciones disponibles: ')
    disp('1. filtro FIR')
    disp('2. filtro IIR')
    disp('3. salir')
    opcion = input('cual desea ejecutar?: ')
    switch opcion
        case 1
            while 1
                disp('Estas son las opciones disponibles: ')
                disp('1. antes del filtro')
                disp('2. después del filtro')
                disp('3. volver al menú de seleccion')
                opcion1 = input('cual desea escuchar?: ')
                switch opcion1
                    case 1
                        disp('pulse cualquier tecla para escuchar el audio')
                        pause
                        soundsc(XIN,fs1)
                    case 2
                        xFIR=filter(FIRP4,XIN);
                        Ts= 1/fs1;
                        N=length(xFIR);
                        Td =N*Ts;
                        deltaf= 1/Td;
                        transformada=fft(xFIR);
                        Y=abs(transformada)/N;
                        disp('Pulse cualquier tecla para ver la gráfica de la FFT de la señal filtrada con el FIR');
                        pause
                        figure
                        f=[0:1/Td:fs1-1/Td];
                        stem(f,Y,'Color', [0.0,1.0,1.0],'LineWidth',0.005);
                        title('Gráfica de la FFT del audio filtrado con el FIR')
                        disp('pulse otra tecla para escuchar el audio filtrado')
                        pause
                        soundsc(xFIR,fs1)
                    case 3
                        break
                    otherwise
                        disp('la opción que ingresaste no es valida, elige 1, 2 o 3')
                end
            end
        case 2
            while 1
                disp('Estas son las opciones disponibles: ')
                disp('1. antes del filtro')
                disp('2. después del filtro')
                disp('3. volver al menú de seleccion')
                opcion2 = input('cual desea escuchar?: ')
                switch opcion2
                    case 1
                        disp('pulse cualquier tecla para escuchar el audio')
                        pause
                        soundsc(XIN,fs1)
                    case 2
                        xIIR=filter(IIRP4,XIN);
                        Ts= 1/fs1;
                        N=length(xIIR);
                        Td =N*Ts;
                        deltaf= 1/Td;
                        transformada=fft(xIIR);
                        Y=abs(transformada)/N;
                        disp('Pulse cualquier tecla para ver la gráfica de la FFT de la señal filtrada con el IIR');
                        pause
                        figure
                        f=[0:1/Td:fs1-1/Td];
                        stem(f,Y,'Color', [0.0,1.0,1.0],'LineWidth',0.005);
                        title('Gráfica de la FFT del audio filtrado con el IIR')
                        disp('pulse otra tecla para escuchar el audio filtrado')
                        pause
                        soundsc(xIIR,fs1)
                    case 3
                        break
                    otherwise
                        disp('la opción que ingresaste no es valida, elige 1, 2 o 3')
                end
            end
        case 3
            break
        otherwise
            disp('la opción que ingresaste no es valida, elige 1, 2 o 3')
    end
end
