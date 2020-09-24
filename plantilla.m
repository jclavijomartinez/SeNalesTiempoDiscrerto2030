%{
     _______. ___________.    _______     
    /       ||          |    |       \    
   |   (----` ---|  |----`   |  .--.  |   
    \   \        |  |        |  |  |  |   
.----)   |    _  |  |     __ |  '--'  |   
|_______/  (__)  |__|  (__)  |_______/    

Laboratorio 2 - Señales de Tiempo Discreto
Desarrollado por: Fabio Sánchez, Santiago Mesa y Juan Clavijo
Puede encontrar este y los demás proyectos en: 
https://github.com/jclavijomartinez/SeNalesTiempoDiscrerto2030
%}
clc;
%% Actividad 1 p.4
disp('Laboratorio 2 - Señales de Tiempo Discreto') %muestra en pantalla el numero de laboratorio
disp('Desarrollado por: Fabio Sánchez, Santiago Mesa y Juan Clavijo')% imprime los nombres de los desarrolladores
[sneaky fsj] = audioread('sneaky.wav');% almacena el sonido 1 en la var. sneaky
[evil fsg] = audioread('evil.wav');% almacena el sonido 2 en la var. evil
[right fsk] = audioread('right.wav');% almacena el sonido 3 en la var. right
%% Actividad 1 p.5
disp(fsj)
disp(fsg)
disp(fsk)
%% Actividad 1 p.6
disp(['el tamaño de evil es: ',num2str(size(evil))])
disp(['el tamaño de evil es: ',num2str(size(right))])
disp(['el tamaño de sneaky es: ',num2str(size(sneaky))])
%% Actividad 1 p.7
%la 
durevil=fsj*120123
%dursneaky=fsj*
%% Actividad 1 p.8

%% Actividad 1 p.9



