%{ 
  /$$$$$$  /$$$$$$$$ /$$$$$$$ 
 /$$__  $$|__  $$__/| $$__  $$
| $$  \__/   | $$   | $$  \ $$
|  $$$$$$    | $$   | $$  | $$
 \____  $$   | $$   | $$  | $$
 /$$  \ $$   | $$   | $$  | $$
|  $$$$$$/$$ | $$/$$| $$$$$$$/
 \______/__/ |__/__/|_______/
Proyecto de aprendizaje 2 - Señales de Tiempo Discreto
Desarrollado por: Fabio Sánchez, Santiago Mesa y Juan Clavijo
Puede encontrar este y los demás proyectos de la clase en: 
https://github.com/jclavijomartinez/SeNalesTiempoDiscrerto2030
%}
disp('Proyecto de aprendizaje 2')
disp('Desarrollado por: Fabio Sánchez, Santiago Mesa y Juan Clavijo')
%% 1. Escalamiento en el tiempo
[escalatiempoFSJ fs1]=audioread('escalatiempoFSJ.wav');
disp('Estas son las velocidades disponibles, elija una porfavor')
disp('1. 0.5x')
disp('2. 0.65x')
disp('3. 0.8x')
disp('4. 1x')
disp('5. 1.20x')
disp('6. 1.35x')
disp('7. 1.5x')
disp('8. 2x')
userinput = input('opcion: ');
switch userinput
  case 1
    audiowrite('0.5xescalatiempoFSJ.wav',escalatiempoFSJ,0.5*fs1);
    disp('Presione cualquier tecla, para escuchar el audiox0.5')
    [CeroCincoEscalatiempoFSJ fs1]=audioread('0.5xescalatiempoFSJ.wav');
    pause
    soundsc(CeroCincoEscalatiempoFSJ,fs1)
    %break;
 case 2
    audiowrite('0.65xescalatiempoFSJ.wav',escalatiempoFSJ,0.65*fs1);
    disp('Presione cualquier tecla, para escuchar el audiox0.65')
    [CeroSesentayCincoEscalatiempoFSJ fs1]=audioread('0.65xescalatiempoFSJ.wav');
    pause
    soundsc(CeroSesentayCincoEscalatiempoFSJ,fs1)
    %break;
 case 3
    audiowrite('0.8xescalatiempoFSJ.wav',escalatiempoFSJ,0.80*fs1);
    disp('Presione cualquier tecla, para escuchar el audiox0.80')
    [CeroOchoEscalatiempoFSJ fs1]=audioread('0.8xescalatiempoFSJ.wav');
    pause
    soundsc(CeroOchoEscalatiempoFSJ,fs1)
    %break;
 case 4
    audiowrite('1xescalatiempoFSJ.wav',escalatiempoFSJ,fs1);
    disp('Presione cualquier tecla, para escuchar el audiox1.00')
    [UnoEscalatiempoFSJ fs1]=audioread('1xescalatiempoFSJ.wav');
    pause
    soundsc(UnoEscalatiempoFSJ,fs1)
    %break;
 case 5
    audiowrite('1.2xescalatiempoFSJ.wav',escalatiempoFSJ,1.20*fs1);
    disp('Presione cualquier tecla, para escuchar el audiox1.20')
    [UnoVeinteEscalatiempoFSJ fs1]=audioread('1.2xescalatiempoFSJ.wav');
    pause
    soundsc(UnoVeinteEscalatiempoFSJ,fs1)
    %break;
 case 6
    audiowrite('1.35xescalatiempoFSJ.wav',escalatiempoFSJ,1.35*fs1);
    disp('Presione cualquier tecla, para escuchar el audiox1.35')
    [UnoTreintayCincoEscalatiempoFSJ fs1]=audioread('1.35xescalatiempoFSJ.wav');
    pause
    soundsc(UnoTreintayCincoEscalatiempoFSJ,fs1)
    %break;
 case 7
    audiowrite('1.5xescalatiempoFSJ.wav',escalatiempoFSJ,1.50*fs1);
    disp('Presione cualquier tecla, para escuchar el audiox1.50')
    [UnoCincuentaEscalatiempoFSJ fs1]=audioread('1.5xescalatiempoFSJ.wav');
    pause
    soundsc(UnoCincuentaEscalatiempoFSJ,fs1)
    %break;
 case 8
    audiowrite('2xescalatiempoFSJ.wav',escalatiempoFSJ,2*fs1);
    disp('Presione cualquier tecla, para escuchar el audiox2')
    [DosEescalatiempoFSJ fs1]=audioread('2xescalatiempoFSJ.wav');
    pause
    soundsc(DosEescalatiempoFSJ,fs1)
    %break;
end
%% 2. Inversion en el tiempo
[palindromaJ fs1]=audioread('palindromaJ.wav');
[palindromaS fs1]=audioread('palindromaS.wav');
[palindromaF fs1]=audioread('palindromaf.wav');

%% 3. Desplazamiento en el tempo 
%% 4. Respuesta impulso de un slit
%% 5. Obtener la respuesta impulso de un SLIT