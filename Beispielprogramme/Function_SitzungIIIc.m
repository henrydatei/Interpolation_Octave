% Function_SitzungIIIc.m
function [fab,fba] = Function_SitzungIIIc (f,a,b)
% fab=f(a,b), fba=f(b,a)
a                   % zur Ausgabe des Eingabeparameters a
b                   % zur Ausgabe des Eingabeparameters b
fab=feval(f,a,b);   % Belegung des Ausgabeparameters fab mit f(a,b) 
fba=feval(f,b,a);   % Belegung des Ausgabeparameters fba mit f(b,a) 