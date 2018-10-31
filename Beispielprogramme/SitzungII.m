% SitzungII.m
clc; clear all; close all;
disp('                                                            VISUALISIERUNG IN 2D');
pause;
disp('>> x = 1:6, y = [76 45 36 20.5 82 44.3] % (x,y)-DATENSAETZE, Z.B. VON DER MESSUNG ');
disp('                                          (x - ZEIT UND y - GESCHWINDIGKEIT)') ;
x = 1:6, y = [76 45 36 20.5 82 44.3]
pause;
disp('>> plot(x,y) % OEFFNET DAS GRAFIK-FENSTER (WENN NICHT SCHON GEOEFFNET)');
disp('               UND STELLT DIE ABHAENGIGKEIT y(x) GRAFISCH DAR (LINEAR INTERPOLIERT)');
pause;
plot(x,y)
pause;
disp(['>> plot(x,y,' char(39) 'r*--' char(39) '); % ZEICHNET GLEICHES WIE OBEN IN DAS']); 
disp('                                 GLEICHE FENSTER MIT ANDEREN KURVENSPEZIFIKATION');
pause;
plot(x,y,'r*--');
pause;
disp('**************************************************************************************')
disp('**** Beachte: plot-Befehl gibt die Grafik stets im aktuelle Grafik-Fenster aus.   ****');
disp('     Das vorherige Bild geht verloren.                                            ****')
disp('**************************************************************************************')
disp('>> figure(3) % OEFFNET DAS NEUE GRAFIK-FENSTER NR. 3');
figure(3)
disp('>> subplot(2,1,1) % UNTERTEILT DIESES GRAFIK-FENSTER');
pause;
subplot(2,1,1)
pause;
disp(['>> plot(x,y) % ZEICHNET GLEICHES WIE OBEN']);
plot(x,y)
pause;
disp('>> subplot(2,1,2) % BENUTZT ANDEREN TEIL DES GRAFIK-FENSTER');
subplot(2,1,2)
pause;
disp(['>> plot(x,y,' char(39) 'r*--' char(39) '); % ZEICHNET GLEICHES WIE OBEN']);
plot(x,y,'r*--');
pause;
disp('>> x = -pi: pi/100: pi; % DEFINIERT BEREICH VON -pi BIS pi MIT DER SCHRITTWEITE pi/100');
x = -pi: pi/100: pi;
pause;
disp('>> figure; % OEFFNET DAS NEUE GRAFIK-FENSTER');
pause;
figure;
pause;
disp('>> plot(x, sin(x)) % ZEICHNET DIE SINUS-KURVE IM BEREICH [-pi, pi]');
pause;
plot(x,sin(x))
pause;
disp('>> y = sin(x); z = cos(x); % DEFINIERT DIE FUNKTIONSWERTE y UND z FUER DIE SINUS UND')
disp('                                                                  KOSINUS FUNKTIONEN')
y = sin(x); z = cos(x);
pause;
disp('>> figure(1) % SO WECHSELT MAN WIEDER ZU DEM ERSTEN GRAFIK-FENSTER BZW.')
disp('                                       OEFFNET DAS GRAFIK-FENSTER NR. 1')
figure(1)
pause;
disp('**********************************************************************************');
disp('**** Wenn zwei Graphen in dem selben Bild dargestellt werden sollen, muss der ****') 
disp('                                                 hold-Befehl verwendet werden ****');
disp('**********************************************************************************');
pause;
disp('>> plot(x,y) % ZUNAECHST WIRD DIE SINUS KURVE ERZEUGT');
pause;
plot(x,y)
pause;
disp('>> hold on % DANN WIRD DIE DARSTELLUNG FIXIERT');
hold on;
pause;
disp('>> plot(x,z) % DANACH WIRD DIE KOSINUS KURVE ABGEBILDET');
pause;
plot(x,z)
pause;
disp('>> hold off % DIE FIXIERUNG VOM VORHERIGEN BILD WIRD ABGESCHALTET');
hold off
pause;
disp(['>> hold on; plot(x,z,' char(39) 'r' char(39) '); hold off % SOMIT WIRD '])
disp('                                          DIE KOSINUS KURVE ROT GEFAERBT')
pause;
hold on; plot(x,z,'r'); hold off
pause;
disp('>> close (1) % SCHLIESST DAS GRAFIK-FENSTER NR. 1')
close (1)
pause;
disp('>> figure(10) % OEFFNET DAS GRAFIK-FENSTER NR. 10');
figure(10)
pause;
disp('>> plot(x,y,x,z) % MEHRERE GRAFEN KOENNEN AUCH MIT EINER plot-ANWEISUNG ')
disp('                  (OHNE hold) DARGESTELLT WERDEN');
pause;
plot(x,y,x,z)
pause;
disp(['>> title(' char(39) 'sin & cos Kurven' char(39) ') % SO GIBT MAN DEM BILD EINEN TITEL']);
title('sin & cos Kurve')
pause;
disp(['>> xlabel(' char(39) 'x-Achse' char(39) ') % SO BESCHRIFTET MAN DIE x-Achse']);
xlabel('x-Achse')
pause;
disp(['>> ylabel(' char(39) 'y-Achse' char(39) ') % ANALOG AUCH DIE y-Achse']);
ylabel('y-Achse')
pause;
disp('>> close % SCHLIESST DAS AKTUELLE GRAFIK-FENSTER');
close
pause;
disp('>> close all % SCHLIESST ALLE GRAFIK-FENSTER');
close all
