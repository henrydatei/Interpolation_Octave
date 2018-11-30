% Henry_Haustein_Lars_Ortscheidt_P1_Octave
clear all

fun = @(x) (1+cos(1.5*pi*x)).^(2/3);
xreal = -1:0.01:1;

N = input('Anzahhl der Stuetzstellen - 1 := N: ')

%Schritweite h berechnen
h = 2/N

%Stuetzstellenvektor x berechnen
x = -1:h:1;

for i=1:N+1
  %Stutzwertevektor f berechnen
  f(i) = fun(x(i));
endfor

for i=1:N
  %Anstiege m_i berechnen
  m(i) = (f(i+1)-f(i))./(x(i+1)-x(i));
  %Achsenabschnitte n_i berechnen
  n(i) = f(i);
endfor

figure(1);
plot(x, f, "-;Interpolation;", xreal, fun(xreal), "-;Funktion;")

%Fehlerfunktion berechnen
figure;
M = 10 * N
h_neu = 2/M
x_Fehler = -1:h_neu:1;

k = 1;
for i=1:N
  %in jedem dieser Durchläufe ist der Spline-Abschnitt der Selbe
  for j=1:10
    y_Fehler(k) = abs(fun(x_Fehler(k)) - (n(i) + abs(abs(x_Fehler(k)) - abs(x(i))) * m(i)));
    k = k + 1;
  endfor
endfor

%Fehler an letzter Stuetzstelle ist 0
y_Fehler(k) = 0;

figure(2);
plot(x_Fehler, y_Fehler, "-; Fehler;")

% maximaler Fehler E
E = max(y_Fehler)