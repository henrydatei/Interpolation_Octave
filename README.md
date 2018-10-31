# Interpolation der Runge-Funktion und anderer Funktionen mit Octave

Erste praktische Aufgabe des Moduls **Einführung in die Numerik** von Prof. Prof. Dr. Andreas Fischer an der TU Dresden im WS 2018/19.

## Die Aufgabe:
Gegeben seien N, eine Zerlegung Delta_N des Intervalls I = [-1,1] durch die gleichabständigen Stützstellen x_i = -1 + ih_n für i=0 , ..., N und mit h_N = 2/N. Weiter sei die Runge Funktion f: R -> R gegeben durch f(x) = 1/(1+25x^2). Berechne Funktionen g_N die f in den Stützstellen x_0, ..., x_N interpolieren. Dabei sei
- (a) g_N ein Polynomspline aus S_0^1(Delta)
- (b) g_N ein Polynomspline aus S_3^1(Delta), der zusätzlich f' in x_0, ..., x_N interpoliert.

Bearbeite die Aufgabe (inklusive der unten stehenden Anforderungen) auch für die Funktion f(x) = (1 + cos(3/2 * pi * x))^(2/3).

## Weitere Anforderungen
Programme sind in Matlab oder Octave zu schreiben und sollen im PC-Pool der Mathematik lauffähig sein. N soll frei wählbar sein.

Die Bilder der Funktionen f und g_N sollen auf I geplottet werden. Weiterhin ist die Fehlerfunktion F_N: I -> [0, unendlich) mit F_n = |f(x) - g_N(x)| an den Stützstellen einer feineren Zerlegung Delta_Mzu berechnen und zu plotten.
