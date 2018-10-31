% vierzeiler.m
x = -pi:pi/4:pi;
y = 1:max(size(x)); % y ist jetzt genau so gross wie x-Vektor und
                    % hat die Elemente 1 2 3 ... u.s.w.
z = sin(x)+y
