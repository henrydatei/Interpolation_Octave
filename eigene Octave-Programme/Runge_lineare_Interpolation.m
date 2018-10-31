clear all

runge = @(x) 1./(1+25*x.^2);
xreal = -1:0.01:1;

n = input('Anzahhl der Stuetzstellen - 1 := N: ')

%Schritweite h berechnen
h = 2/n

%Stuetzstellenvektor x berechnen
x = -1:h:1;

for i=1:n+1
  %Stutzwertevektor f berechnen
  f(i) = runge(x(i));
endfor

for i=1:n
  %Anstiege m_i berechnen
  m(i) = (f(i+1)-f(i))./(x(i+1)-x(i));
  %Achsenabschnitte n_i berechnen
  n(i) = f(i);
endfor

x
f
m
n

plot(x, f, "-;Interpolation;", xreal, runge(xreal), "-;Rungefunktion;")