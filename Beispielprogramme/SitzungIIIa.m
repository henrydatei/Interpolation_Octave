% SitzungIIIa.m
clc; clear all; close all;
% interne Definition einer Funktion mit 2 Parametern
disp('interne Definition einer Funktion mit 2 Parametern')
disp('>> SitzungIIId = @(x,y) sin(x)*y;')
Function_SitzungIIId = @(x,y) sin(x)*y
pause
%
disp('Aufruf einer externen Funktion - Variante 1: mit Zeichenkette')
disp(['>> [Lab1,Lba1] = Function_SitzungIIIc (',char(39),'Function_SitzungIIIb',char(39),',pi/2,pi)'])
pause;
[Lab1,Lba1] = Function_SitzungIIIc ('Function_SitzungIIIb',pi/2,pi)
disp('Aufruf einer externen Funktion - Variante 2: mit function_handle (also mit @)')
disp('>> [Lab2,Lba2] = Function_SitzungIIIc (@Function_SitzungIIIb,pi/2,pi)')
pause;
[Lab2,Lba2] = Function_SitzungIIIc (@Function_SitzungIIIb,pi/2,pi)
disp('Aufruf einer internen Funktion')
disp('>> [Lab2,Lba2] = Function_SitzungIIIc (Function_SitzungIIId,pi/2,pi);')
pause
[Lab2,Lba2] = Function_SitzungIIIc (Function_SitzungIIId,pi/2,pi)