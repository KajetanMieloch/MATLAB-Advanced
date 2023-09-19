function [sila] = SilaCoulombaKM(q1,v1,q2,v2)
%Funkcja oblicza wektor sily kolumba
%   Jako argumenty przyjmuje wartosci ładunków, oraz ich położenia.

k = 1;
dletaR = [v2(1)-v1(1),v2(2)-v1(2)];
wartoscR = sqrt(dletaR(1)^2+dletaR(2)^2);
wartSily = (-k)*((q1*q2)/(wartoscR^2));
wersorSily = dletaR/wartoscR;
sila = wartSily * wersorSily;
end