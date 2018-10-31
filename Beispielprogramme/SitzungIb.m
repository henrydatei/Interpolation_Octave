% SitzungIb.m
clc; clear all; close all;
disp('%                           ARITHMETISCHE OPERATIONEN UND ELEMENTARE FUNKTIONEN');
pause;
disp('% ZUNAECHST DEFINIEREN WIR EINIGE VARIABLEN.');
pause;
disp(['>> n=8, x=1:6, y=x; z=x' char(39) ' % DIE EINZELNEN BEFEHLE KOENNEN IN EINER ZEILE']);
disp('                                     % DURCH KOMMA ODER SEMIKOLON GETRENNT WERDEN.');
n=8, x=1:6, y=x; z=x'
pause;

    disp('>> x + y % ADDITION (Beide Vektoren muessen die gleiche Dimension haben)');
    x+y
    pause;
    disp('>> z - n % SUBTRAKTION (Die arithmet. Op. zw. Vektoren und Skalaren sind erlaubt)');
    z-n
    pause;
    disp('>> b = x.*y; % KOMPONENTENWEISE MULTIPLIKATION; ERGEBNIS WIRD NICHT ANGEZEIGT');
    b = x.*y;
    pause;
    disp('>> b % DAMIT MAN DAS ERGEBNIS SIEHT');
    b
    pause;
    disp('>> y/n % DIVISION ');
    y/n
    pause;
    disp(['>> z./y' char(39) '% KOMPONENTENWEISE DIVISION']);
    z./y'
    pause;
    disp('>> c = z.^2 % KOMPONENTENWEISES QUADRIEREN');
    c = z.^2
    pause;
    disp('>> 2^n % HOCH n');
    2^n
    pause;
    disp('>> sqrt(x) % WURZEL ZIEHEN')
    sqrt(x)
    pause;    
    disp('>> s=sin(x), c = cos(y) % SINUS UND KOSINUS FUNKTIONEN')
    s = sin(x), c = cos(y)
    pause;
    disp('>> exp(x), log(y) % e-FUNKTION UND NATUERLICHER LOGARITHMUS')
    exp(x), log(y)
    pause;
    disp('>> min(x), max(x) % MINIMUM UND MAXIMUM FUNKTIONEN')
    min(x), max(x)
    pause;
    disp('*******************************************************************************');
    disp('** BEACHTE: ES GIBT EINE FUELLE WEITERER MATHEMATISCHER FUNKTIONEN IN Matlab **');
    disp('*******************************************************************************');
