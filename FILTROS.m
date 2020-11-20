[prueba, path]= uigetfile('*.wav');
[XIN fs1]=audioread(prueba);
%xFIR=filter(Num,1,XIN);
xIIR=filter(IIRJSCM2,XIN);