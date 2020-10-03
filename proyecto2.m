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
[palindromaF fs1]=audioread('palindromaF.wav');
inversionpalindromaJ=flipud(palindromaJ);
inversionpalindromaS=flipud(palindromaS);
inversionpalindromaF=flipud(palindromaF);
[escalatiempoFSJ fs1]=audioread('escalatiempoFSJ.wav');
disp('Estas son las palindromas, elija una porfavor')
disp('1. frase antes del sistema de Juan Clavijo')
disp('2. frase después del sistema de Juan Clavijo')
disp('3. frase antes del sistema de Santiago Mesa')
disp('4. frase después del sistema de Santiago Mesa')
disp('5. frase antes del sistema de Fabio Sánchez')
disp('6. frase después del sistema de Fabio Sánchez')
userinputp = input('opcion: ');
switch userinputp
    case 1
        audiowrite('fraseantesJuan.wav',palindromaJ,fs1);
        disp('Presione cualquier tecla, para escuchar el audio')
        pause
        soundsc(palindromaJ,fs1)
    case 2
        audiowrite('frasedespuesJuan.wav',inversionpalindromaJ,fs1);
        disp('Presione cualquier tecla, para escuchar el audio invertido')
        [inversionpalindromaJ fs1]=audioread('frasedespuesJuan.wav');
        pause
        soundsc(inversionpalindromaJ,fs1)
    case 3
        audiowrite('fraseantesSantiago.wav',palindromaS,fs1);
        disp('Presione cualquier tecla, para escuchar el audio')
        pause
        soundsc(palindromaS,fs1)
    case 4
        audiowrite('frasedespuesSantiago.wav',inversionpalindromaS,fs1);
        disp('Presione cualquier tecla, para escuchar el audio invertido')
        [inversionpalindromaS fs1]=audioread('frasedespuesSantiago.wav');
        pause
        soundsc(inversionpalindromaS,fs1)
    case 5
        audiowrite('fraseantesFabio.wav',palindromaF,fs1);
        disp('Presione cualquier tecla, para escuchar el audio')
        pause
        soundsc(palindromaF,fs1)
    case 6
        audiowrite('frasedespuesFabio.wav',inversionpalindromaF,fs1);
        disp('Presione cualquier tecla, para escuchar el audio invertido')
        [inversionpalindromaF fs1]=audioread('frasedespuesFabio.wav');
        pause
        soundsc(inversionpalindromaF,fs1)
end
%% 3. Desplazamiento en el tiempo 
[holaacaestoyJSF fs1]=audioread('holaacaestoyJSF.wav');
audioleido=holaacaestoyJSF(:,:)
N=length(audioleido);
%posicion 1
RetardoL=zeros(N+30,2);
RetardoL(1:N,1)=audioleido(:,1);
RetardoL(31:N+30,2)=audioleido(:,1);
soundsc(RetardoL,fs1)
audiowrite('posicion1.wav',RetardoL,fs1);
%posicion 2
RetardoLF=zeros(N+15,2);
RetardoLF(1:N,1)=audioleido(:,1);
RetardoLF(16:N+15,2)=audioleido(:,1);
pause
soundsc(RetardoLF,fs1)
audiowrite('posicion2.wav',RetardoLF,fs1);
%posicion 3
pause
soundsc(holaacaestoyJSF,fs1)
%posicion 4
RetardoRF=zeros(N+15,2);
RetardoRF(1:N,2)=audioleido(:,1);
RetardoRF(16:N+15,1)=audioleido(:,1);
pause
soundsc(RetardoRF,fs1)
audiowrite('posicion4.wav',RetardoRF,fs1);
%posicion 5
RetardoR=zeros(N+30,2);
RetardoR(1:N,2)=audioleido(:,1);
RetardoR(31:N+30,1)=audioleido(:,1);
pause
soundsc(RetardoR,fs1)
audiowrite('posicion5.wav',RetardoR,fs1);
%% 4. Respuesta impulso de un slit
%% 5. Obtener la respuesta impulso de un SLIT