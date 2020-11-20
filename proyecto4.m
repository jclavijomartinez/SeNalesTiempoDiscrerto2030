while 1
    disp('Proyecto de aprendizaje 4 - Señales de Tiempo Discreto')
    disp('Desarrollado por: Santiago Mora, Fabio Sánchez y Juan Sebastián Clavijo')
    while 1
        disp('Estas son las opciones disponibles: ')
        disp('1. filtro FIR')
        disp('2. filtro IIR')
        opcion = input('cual desea ejecutar?: ')
        switch opcion
            case 1
                disp('Estas son las opciones disponibles: ')
                disp('1. antes del filtro')
                disp('2. después del filtro')
                opcion1 = input('cual desea escuchar?: ')
                switch opcion1
                    case 1
                    case 2
                end
            case 2
                disp('Estas son las opciones disponibles: ')
                disp('1. antes del filtro')
                disp('2. después del filtro')
                opcion2 = input('cual desea escuchar?: ')
                switch opcion2
                    case 1
                    case 2
                end
            otherwise
                disp('no entiendo lo que me quieres decir')
        end
    end
end