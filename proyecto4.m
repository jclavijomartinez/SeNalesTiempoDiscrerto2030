%% gráfica de la FFT
[XIN fs1]=audioread('Party_ruido_barrido.wav');
Ts= 1/fs1;
N=length(XIN);
Td =N*Ts;
deltaf= 1/Td;
transformada=fft(XIN);
Y=abs(transformada)/N;
figure
f=[0:1/Td:fs1-1/Td];
stem(f,Y,'Color', [0.0,1.0,1.0],'LineWidth',0.005);
title('Gráfica de la FFT del audio')
%% menú de ejecución 
while 1
    disp('Proyecto de aprendizaje 4 - Señales de Tiempo Discreto')
    disp('Desarrollado por: Santiago Mora, Fabio Sánchez y Juan Sebastián Clavijo')
    while 1
        disp('Estas son las opciones disponibles: ')
        disp('1. filtro FIR')
        disp('2. filtro IIR')
        disp('3. salir')
        opcion = input('cual desea ejecutar?: ')
        switch opcion
            case 1
                disp('Estas son las opciones disponibles: ')
                disp('1. antes del filtro')
                disp('2. después del filtro')
                disp('3. volver al menú de seleccion')
                opcion1 = input('cual desea escuchar?: ')
                switch opcion1
                    case 1
                        
                    case 2
                        
                    case 3
                        break
                end
            case 2
                disp('Estas son las opciones disponibles: ')
                disp('1. antes del filtro')
                disp('2. después del filtro')
                disp('3. volver al menú de seleccion')
                opcion2 = input('cual desea escuchar?: ')
                switch opcion2
                    case 1
                    case 2
                end
            case 3
                exit
            otherwise
                disp('no entiendo lo que me quieres decir')
        end
    end
end