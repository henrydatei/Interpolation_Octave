clear all

runge = @(x) 1./(1+25*x.^2);
runge_abl = @(x) (-50*x)/(1+25*x^2)^2;
%    N = input('Anzahl der Stuetzstellen -1 :=N : ')
for l = 0:11
  N = 4* 2^l

  %Abstand Stuetzstellen h
  h = 2./N;

  %Stuetzstellen x
  x = -1:h:1;

  for i = 1:N+1
    %Stuetzwerte f
    f(i) = runge(x(i));
    %Ableitungen
    m(i) = runge_abl(x(i));
  endfor

  %Berechnung a_k, b_k nach 1.10
  H = [h^3 , h^2 ; 3*h^2 , 2*h];
  for i = 1:N
    r = H\[f(i+1)-f(i)-m(i)*h ; m(i+1)-m(i)];
    a(i) = r(1);
    b(i) = r(2);
    %c(i) = m(i)
    %d(i) = f(i)
  endfor

  %Interpolierende und Runge plotten auf Zerlegung M
  M = 10 * N;
  h_fein = 2/M;
  x_fein = -1:h_fein:1;
  k = 1;
  for i=1:N
    %in jedem dieser Durchlaeufe ist der Spline-Abschnitt der Selbe
    for j=1:10
      s(k) = a(i)*(x_fein(k)-x(i))^3 +b(i)*(x_fein(k)-x(i))^2 +...
      m(i)*(x_fein(k)-x(i))+f(i);
      k = k + 1;
    endfor
  endfor
  s(k) = f(N+1);
%  figure(1);
%  plot(x_fein, runge(x_fein), "-;Rungefunktion;", x_fein, s,"-;Interpolation;")

%  figure;
  %Fehlerfunktion

  k = 1;
  for i=1:N
    %in jedem dieser Durchlaeufe ist der Spline-Abschnitt der Selbe
    for j=1:10
      y_Fehler(k) = abs(runge(x_fein(k)) - ...
      (a(i)*(x_fein(k)-x(i))^3 +b(i)*(x_fein(k)-x(i))^2 +...
      m(i)*(x_fein(k)-x(i))+f(i)));
      k = k + 1;
    endfor
  endfor

  %Fehler an letzter Stuetzstelle ist 0
  y_Fehler(k) = 0;

%  figure(2);
%  plot(x_fein, y_Fehler, "-; Fehler;")

  %Maximaler Fehler
  E = max(y_Fehler);
  E_vek(l+1) = E;
endfor

for l = 0:4
  E_vek(l+1)
endfor

for l = 0:10
  h_N = 2 /(4* 2^l);
  h_N1 = 2/(4*2^(l+1));
  EOC(l+1) = (log(E_vek(l+1))-log(E_vek(l+2)))/(log(h_N)-log(h_N1));
endfor
EOC
