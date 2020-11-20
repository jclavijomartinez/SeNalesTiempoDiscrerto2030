%% definición de vectores con las frecuencias de la DTMF
clc;
clear all;
close all;
LF=[697 770 852 941];
HF=[1209 1336 1477];
j=1;
%% impresión de los nombres de los participantes y lectura del audio
disp('Proyecto de aprendizaje 3 - Señales de Tiempo Discreto')
disp('Desarrollado por: Danilo Parra, Fernando Castro y Juan Clavijo')
[Input, path]= uigetfile('*.wav');
[InputAudio, fs]=audioread(Input);
%% Función que halla posición de inicio y final de cada dígito en la señal
if(Input == "DTMF 04.wav")
    MPH=0.06;%Se aumenta ligeramente la sensibilidad de la detección de picos
            %debido a que el ruido genera un pico indeseado en el audio
            %№04 que no permite adquirir correctamente los datos
else
    MPH=0.04;
end
 
if(Input == "DTMF 14.wav")
    Toler = 0.02;%El error se aumenta a 2% debido a que, con el audio №14
                %NO se detectaba un valor de frecuencia baja con error de +/-1.5%
                %ya que un valor se hallaba en 866Hz y con 1.5% máximo detecta
                %hasta 864.8Hz.
else
    Toler = 0.015;
end
[Pks,NLocal]=findpeaks(abs(InputAudio(:,1)),'MinPeakHeight',0.04, 'MinPeakDistance',0.07*fs); %0.07seg escalados para tener diferencia en cantidad de muestras
V=size(NLocal); ValE=V(:,1);ValU=(ValE/2);
%% Ciclo FOR que realiza el análisis de frecuencia para cada valor y automatiza recortes de audio
for i=1:2:ValE
    Dig=InputAudio(NLocal(i):NLocal(i+1)); %Asigna los valores en "n" del audio de entrada en dígito, limitado por la información obtenida en el análisis con findpeaks
    FDig=fft(Dig);
    N=size(Dig);
    NE=N(:,1);
    Dur=(NE/fs);
    dT=Dur(:,1);
    Td = dT;
    Ts= NE/fs;
    TD=[0:1/fs:Td-1/fs];
    f=[(600):1/(dT):fix(fs-14480)];
    CutFDig=FDig(600*Ts:1520*Ts);
    [FPeaks,FLoc]=findpeaks(abs(CutFDig),f,'MinPeakHeight',3.5, 'MinPeakDistance',260,'NPeaks', 2);
%% condicionales que comparan datos y hallan el número marcado
if((FLoc(1)>(LF(1)-(LF(1)*Toler)))&&(FLoc(1)<(LF(1)+LF(1)*Toler)))
        if ((FLoc(2)>(HF(1)-(HF(1)*Toler)))&&((FLoc(2)<(HF(1)+(HF(1)*Toler)))))
            Numeros_Marcados(j)=1;
        elseif((FLoc(2)>(HF(2)-(HF(2)*Toler)))&&((FLoc(2)<(HF(2)+(HF(2)*Toler)))))
            Numeros_Marcados(j)=2;
        elseif((FLoc(2)>(HF(3)-(HF(3)*Toler)))&&((FLoc(2)<(HF(3)+(HF(3)*Toler)))))
            Numeros_Marcados(j)=3;
        end
    elseif((FLoc(1)>(LF(2)-(LF(2)*Toler)))&&(FLoc(1)<(LF(2)+LF(2)*Toler)))
        if ((FLoc(2)>(HF(1)-(HF(1)*Toler)))&&((FLoc(2)<(HF(1)+(HF(1)*Toler)))))
            Numeros_Marcados(j)=4;
        elseif((FLoc(2)>(HF(2)-(HF(2)*Toler)))&&((FLoc(2)<(HF(2)+(HF(2)*Toler)))))
            Numeros_Marcados(j)=5;
        elseif((FLoc(2)>(HF(3)-(HF(3)*Toler)))&&((FLoc(2)<(HF(3)+(HF(3)*Toler)))))
            Numeros_Marcados(j)=6;
        end
    elseif((FLoc(1)>(LF(3)-(LF(3)*0.02)))&&(FLoc(1)<(LF(3)+LF(3)*0.02)))
        if ((FLoc(2)>(HF(1)-(HF(1)*Toler)))&&((FLoc(2)<(HF(1)+(HF(1)*Toler)))))
            Numeros_Marcados(j)=7;
        elseif((FLoc(2)>(HF(2)-(HF(2)*Toler)))&&((FLoc(2)<(HF(2)+(HF(2)*Toler)))))
            Numeros_Marcados(j)=8;
        elseif((FLoc(2)>(HF(3)-(HF(3)*Toler)))&&((FLoc(2)<(HF(3)+(HF(3)*Toler)))))
            Numeros_Marcados(j)=9;
        end
    elseif((FLoc(1)>(LF(4)-(LF(4)*Toler)))&&(FLoc(1)<(LF(4)+LF(4)*Toler)))
        if ((FLoc(2)>(HF(1)-(HF(1)*Toler)))&&((FLoc(2)<(HF(1)+(HF(1)*Toler)))))
            Numeros_Marcados(j)='#';
        elseif((FLoc(2)>(HF(2)-(HF(2)*Toler)))&&((FLoc(2)<(HF(2)+(HF(2)*Toler)))))
            Numeros_Marcados(j)=0;
        elseif((FLoc(2)>(HF(3)-(HF(3)*Toler)))&&((FLoc(2)<(HF(3)+(HF(3)*Toler)))))
            Numeros_Marcados(j)='*';
        end
    end %Final de condicionales que comparan los datos según condiciones dadas.
    j=j+1;%Aumenta en uno (1) el valor del contador j por cada iteración
end
Numeros_Marcados %Muestra en consola los valores en la matriz 1x15 "Numeros_Marcados" obtenidos tras el análisis