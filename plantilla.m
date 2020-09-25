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
[m,n]=size(sneaky);
dursneaky=fsj/m;
[u,r]=size(evil);
durevil=fsj/u;
[a,b]=size(right);
dursright=fsj/a;
disp(['la duracion de sneaky',num2str(dursneaky)])
disp(['la duracion de evil',num2str(durevil)])
disp(['la duracion de right',num2str(dursright)])
%% Actividad 1 p.8

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
%% Actividad 2 p.14
soundsc(sneaky,fsg)
%% Actividad2 p.15
newfs=0.7*fsj;
soundsc(sneaky,newfs)
%% Actividad2 p.17
audiowrite('newsneaky.wav',sneaky,0.7*fsj)
audiowrite('newsneaky1.3.wav',sneaky,1.3*fsj)
%% Actividad3 p.18
mat=magic(3)
%% Actividad3 p.20
V=fliplr(mat)%reflexion espejo
pause
H=flipud(mat)%reflexion segun x
%% Actividad3 p.21
colceros=sneaky;
colceros(:,1)=0
%% Actividad3 p.22
W=fliplr(colceros);
C=flipud(colceros);
%% Actividad3 p.23
soundsc(W,fsj)
pause
soundsc(C,fsj)
%% Actividad3 p.24
audiowrite('W.wav',W,fsj);
audiowrite('C.wav',C,fsj);
%% Actividad4 p.25
[impulso fimp] = audioread('SLIT_MDA_E001_M2S.wav');
%% Actividad4 p.26
[m n]=size(impulso);
disp(['el tamaño del audio es: ',num2str(m)])
%% Actividad4 p.28
CO=conv(sneaky(:,1),impulso(:,1))
%% Actividad4 p.29
[tam tama]=size(CO);
[sne senak]=size(sneaky);
[m n]=size(impulso);
disp(['el tamaño de la convolucion es: ',num2str(tam)])
disp(['es la suma de: ',num2str(sne),' + ',num2str(m), ' = ',num2str(sne+m)])
%% Actividad4 p.30
soundsc(sneaky,fsj)
pause
soundsc(CO,fimp)
%% Actividad4 p.31
%la diferencia es que al escuchar la salida, esta tiene el efecto de
%reverberacion, este se produce por la convolucion de la señal con el
%impulso