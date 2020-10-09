%{ 
                 (            (      
                 )\ )   *   ) )\ )   
                (()/( ` )  /((()/(   
                 /(_)) ( )(_))/(_))  
                (_))  (_(_())(_))_   
                / __| |_   _| |   \  
                \__ \ _ | | _ | |) | 
                |___/(_)|_|(_)|___/  

Proyecto de aprendizaje 2 - Señales de Tiempo Discreto
Desarrollado por: Fabio Sánchez, Santiago Mesa y Juan Clavijo
Puede encontrar este y los demás proyectos de la clase en: 
https://github.com/jclavijomartinez/SeNalesTiempoDiscrerto2030
%}
while 1
    disp(' ');
    disp('Proyecto de aprendizaje 2')
    disp('Desarrollado por: Fabio Sánchez, Santiago Mesa y Juan Clavijo')
    disp('Digite "1" para ejecutar el punto numero 1');
    disp('Digite "2" para ejecutar el punto numero 2');
    disp('Digite "3" para ejecutar el punto numero 3');
    disp('Digite "4" para ejecutar el punto numero 4');
    disp('Digite "5" para ejecutar el punto numero 5');
    disp('Digite "6" para salir del programa');
    opcion = input('¿Cual punto desea ejecutar?: ')
    while 1
        switch opcion
        %% 1. Escalamiento en el tiempo
            case 1
                while 1
                    disp(' ');
                    [escalatiempoFSJ fs1]=audioread('Audios/escalatiempoFSJ.wav');
                    disp('Estas son las velocidades disponibles, elija una porfavor');
                    disp('1. 0.5x');
                    disp('2. 0.65x');
                    disp('3. 0.8x');
                    disp('4. 1x');
                    disp('5. 1.20x');
                    disp('6. 1.35x');
                    disp('7. 1.5x');
                    disp('8. 2x');
                    disp('9. regresar al menu principal');
                    userinput = input('opcion: ');
                    switch userinput
                        case 1
                            audiowrite('0.5xescalatiempoFSJ.wav',escalatiempoFSJ,0.5*fs1);
                            disp('Presione cualquier tecla, para escuchar el audiox0.5')
                            [CeroCincoEscalatiempoFSJ fs1]=audioread('0.5xescalatiempoFSJ.wav');
                            pause
                            soundsc(CeroCincoEscalatiempoFSJ,fs1)
                            break;
                        case 2
                            audiowrite('0.65xescalatiempoFSJ.wav',escalatiempoFSJ,0.65*fs1);
                            disp('Presione cualquier tecla, para escuchar el audiox0.65')
                            [CeroSesentayCincoEscalatiempoFSJ fs1]=audioread('0.65xescalatiempoFSJ.wav');
                            pause
                            soundsc(CeroSesentayCincoEscalatiempoFSJ,fs1)
                            break;
                        case 3
                            audiowrite('0.8xescalatiempoFSJ.wav',escalatiempoFSJ,0.80*fs1);
                            disp('Presione cualquier tecla, para escuchar el audiox0.80')
                            [CeroOchoEscalatiempoFSJ fs1]=audioread('0.8xescalatiempoFSJ.wav');
                            pause
                            soundsc(CeroOchoEscalatiempoFSJ,fs1)
                            break;
                        case 4
                            audiowrite('1xescalatiempoFSJ.wav',escalatiempoFSJ,fs1);
                            disp('Presione cualquier tecla, para escuchar el audiox1.00')
                            [UnoEscalatiempoFSJ fs1]=audioread('1xescalatiempoFSJ.wav');
                            pause
                            soundsc(UnoEscalatiempoFSJ,fs1)
                            break;
                        case 5
                            audiowrite('1.2xescalatiempoFSJ.wav',escalatiempoFSJ,1.20*fs1);
                            disp('Presione cualquier tecla, para escuchar el audiox1.20')
                            [UnoVeinteEscalatiempoFSJ fs1]=audioread('1.2xescalatiempoFSJ.wav');
                            pause
                            soundsc(UnoVeinteEscalatiempoFSJ,fs1)
                            break;
                        case 6
                            audiowrite('1.35xescalatiempoFSJ.wav',escalatiempoFSJ,1.35*fs1);
                            disp('Presione cualquier tecla, para escuchar el audiox1.35')
                            [UnoTreintayCincoEscalatiempoFSJ fs1]=audioread('1.35xescalatiempoFSJ.wav');
                            pause
                            soundsc(UnoTreintayCincoEscalatiempoFSJ,fs1)
                            break;
                        case 7
                            audiowrite('1.5xescalatiempoFSJ.wav',escalatiempoFSJ,1.50*fs1);
                            disp('Presione cualquier tecla, para escuchar el audiox1.50')
                            [UnoCincuentaEscalatiempoFSJ fs1]=audioread('Audios/1.5xescalatiempoFSJ.wav');
                            pause
                            soundsc(UnoCincuentaEscalatiempoFSJ,fs1)
                            break;
                        case 8
                            audiowrite('2xescalatiempoFSJ.wav',escalatiempoFSJ,2*fs1);
                            disp('Presione cualquier tecla, para escuchar el audiox2')
                            [DosEescalatiempoFSJ fs1]=audioread('2xescalatiempoFSJ.wav');
                            pause
                            soundsc(DosEescalatiempoFSJ,fs1)
                            break;
                        case 9
                            break;
                    end
                end
%% 2. Inversion en el tiempo
            case 2
                disp(' ');
                [palindromaJ fs1]=audioread('Audios/palindromaJ.wav');
                [palindromaS fs1]=audioread('Audios/palindromaS.wav');
                [palindromaF fs1]=audioread('Audios/palindromaF.wav');
                inversionpalindromaJ=flipud(palindromaJ);
                inversionpalindromaS=flipud(palindromaS);
                inversionpalindromaF=flipud(palindromaF);
                [escalatiempoFSJ fs1]=audioread('Audios/escalatiempoFSJ.wav');
                disp('Estas son las palindromas, elija una porfavor');
                disp('1. frase antes del sistema de Juan Clavijo');
                disp('2. frase después del sistema de Juan Clavijo');
                disp('3. frase antes del sistema de Santiago Mesa');
                disp('4. frase después del sistema de Santiago Mesa');
                disp('5. frase antes del sistema de Fabio Sánchez');
                disp('6. frase después del sistema de Fabio Sánchez');
                userinputp = input('opcion: ');
                switch userinputp
                    case 1
                        audiowrite('fraseantesJuan.wav',palindromaJ,fs1);
                        disp('Presione cualquier tecla, para escuchar el audio')
                        pause
                        soundsc(palindromaJ,fs1)
                        break;
                    case 2
                        audiowrite('frasedespuesJuan.wav',inversionpalindromaJ,fs1);
                        disp('Presione cualquier tecla, para escuchar el audio invertido')
                        [inversionpalindromaJ fs1]=audioread('frasedespuesJuan.wav');
                        pause
                        soundsc(inversionpalindromaJ,fs1)
                        break;
                    case 3
                        audiowrite('fraseantesSantiago.wav',palindromaS,fs1);
                        disp('Presione cualquier tecla, para escuchar el audio')
                        pause
                        soundsc(palindromaS,fs1)
                        break;
                    case 4
                        audiowrite('frasedespuesSantiago.wav',inversionpalindromaS,fs1);
                        disp('Presione cualquier tecla, para escuchar el audio invertido')
                        [inversionpalindromaS fs1]=audioread('frasedespuesSantiago.wav');
                        pause
                        soundsc(inversionpalindromaS,fs1)
                        break;
                    case 5
                        audiowrite('fraseantesFabio.wav',palindromaF,fs1);
                        disp('Presione cualquier tecla, para escuchar el audio')
                        pause
                        soundsc(palindromaF,fs1)
                        break;
                    case 6
                        audiowrite('frasedespuesFabio.wav',inversionpalindromaF,fs1);
                        disp('Presione cualquier tecla, para escuchar el audio invertido')
                        [inversionpalindromaF fs1]=audioread('frasedespuesFabio.wav');
                        pause
                        soundsc(inversionpalindromaF,fs1)
                        break;
                end
            case 3
                %% 3. Desplazamiento en el tiempo
                disp(' ');
                [holaacaestoyJSF fs1]=audioread('Audios/holaacaestoyJSF.wav');
                audioleido=holaacaestoyJSF(:,:);
                N=length(audioleido);
                disp('Estas son las palindromas, elija una porfavor');
                disp('1. escuchar la posicion 1 (izquierda total)');
                disp('2. escuchar la posicion 2 (frontal izquierda)');
                disp('3. escuchar la posicion 3 (frontal total)');
                disp('4. escuchar la posicion 4 (frontal derecha)');
                disp('5. escuchar la posicion 5 (derecha total)');
                userinputptres = input('opcion: ');
                switch userinputptres
                    case 1
                        %posicion 1
                        RetardoL=zeros(N+30,2);
                        RetardoL(1:N,1)=audioleido(:,1);
                        RetardoL(31:N+30,2)=audioleido(:,1);
                        disp('pulse cualquier tecla para escuchar el audio');
                        pause
                        soundsc(RetardoL,fs1)
                        audiowrite('posicion1.wav',RetardoL,fs1);
                        break;
                    case 2
                        %posicion 2
                        RetardoLF=zeros(N+15,2);
                        RetardoLF(1:N,1)=audioleido(:,1);
                        RetardoLF(16:N+15,2)=audioleido(:,1);
                        disp('pulse cualquier tecla para escuchar el audio');
                        pause
                        soundsc(RetardoLF,fs1)
                        audiowrite('posicion2.wav',RetardoLF,fs1);
                        break;
                    case 3
                        %posicion 3
                        disp('pulse cualquier tecla para escuchar el audio');
                        pause
                        soundsc(holaacaestoyJSF,fs1)
                        break;
                    case 4
                        %posicion 4
                        RetardoRF=zeros(N+15,2);
                        RetardoRF(1:N,2)=audioleido(:,1);
                        RetardoRF(16:N+15,1)=audioleido(:,1);
                        disp('pulse cualquier tecla para escuchar el audio');
                        pause
                        soundsc(RetardoRF,fs1)
                        audiowrite('posicion4.wav',RetardoRF,fs1);
                        break;
                    case 5
                        %posicion 5
                        RetardoR=zeros(N+30,2);
                        RetardoR(1:N,2)=audioleido(:,1);
                        RetardoR(31:N+30,1)=audioleido(:,1);
                        disp('pulse cualquier tecla para escuchar el audio');
                        pause
                        soundsc(RetardoR,fs1)
                        audiowrite('posicion5.wav',RetardoR,fs1);
                        break;
                end
            case 4
                %% 4. Respuesta impulso de un slit
                disp(' ');
                [fraseslitFSJ fs1]= audioread('Audios/fraseslitFSJ.wav');
                [impulso1 fs1]=audioread('Audios/SLITS/IMPULSO1.wav');
                [impulso2 fs1]=audioread('Audios/SLITS/IMPULSO2.wav');
                [impulso3 fs1]=audioread('Audios/SLITS/IMPULSO3.wav');
                disp('Estas son las posibles opciones: ')
                disp('1. frase antes de pasar por los SLIT')
                disp('2. frase después de la convolucion con el SLIT 1');
                disp('3. frase después de la convolucion con el SLIT 2');
                disp('4. frase después de la convolucion con el SLIT 3');
                userinputpcuatro = input('opcion: ');
                switch userinputpcuatro
                    case 1
                        disp('pulse cualquier tecla para escuchar el audio:');
                        pause
                        soundsc(fraseslitFSJ,fs1)
                        disp('este audio ya esta guardado en su pc');
                        break;
                    case 2
                        ConvSLIT1=conv(impulso1(:,1),fraseslitFSJ(:,1));
                        disp('pulse cualquier tecla para escuchar el audio:');
                        pause
                        soundsc(ConvSLIT1,fs1)
                        audiowrite('Audios/convolucion1.wav',ConvSLIT1,fs1);
                        break;
                    case 3
                        ConvSLIT2=conv(impulso2(:,1),fraseslitFSJ(:,1));
                        disp('pulse cualquier tecla para escuchar el audio:');
                        pause
                        soundsc(ConvSLIT2,fs1)
                        audiowrite('Audios/convolucion2.wav',ConvSLIT2,fs1);
                        break;
                    case 4
                        ConvSLIT3=conv(impulso3(:,1),fraseslitFSJ(:,1));
                        disp('pulse cualquier tecla para escuchar el audio:');
                        pause
                        soundsc(ConvSLIT3,fs1)
                        audiowrite('Audios/convolucion3.wav',ConvSLIT3,fs1);
                        break;
                end
            case 5
                %% 5. Obtener la respuesta impulso de un SLIT
                disp(' ');
                [fraseRimpulsoFSJ fs1]= audioread('Audios/RimpulsoFSJ.wav');
                %[impulsoSLIT fs1] = audioread('Audios/explosion.wav');
                ConvRimpulso=conv(fraseRimpulsoFSJ(:,1),impulsoSLIT(:,1));
                disp('pulse cualquier tecla para escuchar el audio:')
                pause
                soundsc(ConvRimpulso,fs1)
                audiowrite('Audios/ConvRimpulso.wav',ConvRimpulso,fs1);
            case 6
                return;
            otherwise
                disp('ERROR, esta no es una opcion valida, digite un numero de 1 a 6!!');
                break;
        end
    end
end