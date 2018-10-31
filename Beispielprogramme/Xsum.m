% Xsum.m
% Dieses Skript summiert alle Komponenten des Vektors x
x = [1 2 3 4 5];
s = 0;
for i=1:max(size(x))
    s = s+x(i);
end
disp('Die Summe ist gleich ='); disp(s);
