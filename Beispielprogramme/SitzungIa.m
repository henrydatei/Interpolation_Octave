% SitzungIa.m
clc;
clear all; % LOESCHEN ALLER VARIABLEN AUS DEM WORKSPACE
close all; % LOESCHE VON BILDER, FALLS NOTWENDIG
disp('                                     SKALARE UND VEKTORIELLE VARIABLEN')
pause;
%1
    disp('>> n = 8 % EINGABE EINES SKALARS (MIT ERGEBNIS-ANZEIGE)');
    n = 8
    pause;      
    disp('>> m = n; % EINGABE EINES SKALARS (OHNE ERGEBNIS-ANZEIGE)');
    m = n;
    disp('*****************************************************************');
    disp('%**  DIE VARIABLE m WIRD MIT DEM WERT DER VARIABLE n DEFINIERT **');
    disp('*****************************************************************');
    pause;    
%2
    disp('>> x = [1,2,3,4,5,6] % EINGABE EINES ZEILENVEKTORS');
    x = [1,2,3,4,5,6]
    pause;
    disp('>> y = [1 2 3 4 5 6] % GEHT AUCH SO');
    y = [1 2 3 4 5 6]
    pause;
%3
    disp('% MIT SOG. Colon-Operator LASSEN SICH DIE VEKTOREN IN DEM FORMAT');
    disp('% Anfang:Schrittweite:Ende EINFACH ERSTELLEN');
    pause;
    disp('>> x2 = 1:1:6')
    x2 = 1:1:6
    pause;
    disp('>> y2 = 1:6 % KURZE VARIANTE, WENN DIE SCHRITTWEITE GLEICH EINS IST')
    y2 = 1:6
    pause;
    disp('>> l = 1:2:10 % SO KANN MAN Z.B. DIE FOLGE ALLER UNGERADEN ZAHLEN');
    disp('              % IM BEREICH [1:10] DEFINIEREN');
    l = 1:2:10
    pause;
    disp('>> l = 10:-3:1 % DIE SCHRITTWEITE KANN AUCH NEGATIV SEIN');
    l = 10:-3:1
    pause;
%4
    disp('>> z = [1;2;3;4;5;6] % EINGABE EINES SPALTENVEKTORS');
    z = [1;2;3;4;5;6]
    pause;
%5
    disp('>> size(x) % SO KANN MAN DIE DIMENSION DES VEKTORS x ABFRAGEN')
    size(x)
    disp('%***************************************');
    disp('%**** ans IST DIE ERGEBNIS-VARIABLE ****');
    disp('%***************************************');
    pause;
    disp('>> k = size(z) % DIMENSION DES VEKTORS z');    
    k = size(z)
    pause;
%6 
    disp(['>> z' char(39) ' % TRANSPONIEREN : UMWANDLUNG VON SPALTEN- IN ZEILENVEKTOR']);
    z'
    pause;
    disp(['>> x2 = x2' char(39) ' % ES GEHT AUCH UMGEKEHRT']);
    x2 = x2'
    disp('%******************************************************************');
    disp('%*** ES WIRD KEIN VERGLEICH SONDERN EINE ZUWEISUNG VORGENOMMEN. ***' )
    disp(['%*** SOMIT WIRD x2 MIT DEM NEUEN WERT x2' char(39) ' UMDEFINIERT.          ***']);
    disp('%******************************************************************');
    pause;
%7
    disp('>> b = x(3) % SO GREIFT MAN AUF EINZELNE KOMPONENTEN EINES VEKTORS ZU');
    b = x(3)
    pause;
    disp('>> x2(6) = n % SO KANN MAN AUCH EINZELNE KOMPONENTEN MODIFIZIEREN');
    x2(6) = n
    pause;
    disp('>> v = [] % SO INITIALISIERT MAN EINEN VEKTOR');
    v = []
    pause;
    disp('>> w1 = zeros(1,n) % INITIALISIERUNG EINES ZEILENVEKTORS MIT n KOMPONENTEN.');
    disp('                   % ALLE KOMPONENTEN SIND MIT NULLEN BELEGT.')
    w1 = zeros(1,n)
    pause;
%8
    disp(['>> X = ' char(39) 'Hallo World!' char(39) ' % EINGABE EINER ZEICHENKETTE'])
    X = 'Hallo World'
    disp('%********************************************************************************')
    disp('%**** BEACHTE, DASS Matlab ZWISCHEN GROSS- UND KLEINSCHREIBUNG UNTERSCHEIDET ****')
    disp('%********************************************************************************')
    pause;
%9
    disp('>> clear x2 m % LOESCHT DIE VARIABLEN x2 UND m');
    clear x2 m
    pause
    disp('>> whos % WELCHE VARIABLEN GIBT ES JETZT NOCH?');
    whos
    pause
    disp('>> size(x), size(X), size(z) % WELCHE LAENGE HABEN DIE VEKTOREN x, X und z?');
    size(x), size(X), size(z)
    pause
    disp('>> clear all % LOESCHT ALLE VARIABLEN');
    clear all
