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
pause
%% Actividad 1 p.5
clc
disp(fsj)
disp(fsg)
disp(fsk)
pause
%% Actividad 1 p.6
clc
disp(['el tamaño de evil es: ',num2str(size(evil))])
disp(['el tamaño de evil es: ',num2str(size(right))])
disp(['el tamaño de sneaky es: ',num2str(size(sneaky))])
pause
%% Actividad 1 p.7
clc
%la 
durevil=fsj*120123
%dursneaky=fsj*
%% Actividad 1 p.8
clc
%% Actividad 1 p.9
clc
juantest=zeros(size(sneaky));
juantest1=zeros(size(sneaky));
juantest(:,2)=sneaky(:,2);
juantest1(:,1)=sneaky(:,1);
nuevo=[sneaky;juantest;juantest1];
soundsc(nuevo,fsj);
pause
%% Actividad 1 p.10
clc
subplot(211), plot(sneaky(:,1))
subplot(212), plot(sneaky(:,2),'r')
%% Actividad 1 p.11
subplot(211), plot(juantest(:,2))
subplot(212), plot(juantest1(:,1),'r')
soundsc(juantest,fsj);
soundsc(juantest1,fsj);
%azul=L
%rojo=R
%% Actividad 1 p.12
t=[0:1/fsj:(size(sneaky(:,1))-1)/fsj];
plot(t,sneaky)
%% Actividad 2 p. 1
