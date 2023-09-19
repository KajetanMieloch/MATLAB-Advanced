c = 2.9979*20^8; %Stała C
m = linspace(1, 10^6); %Wektor m
E = energiaKM(m,c)%Wektor E używając funkcji energiaKM
subplot(1,3,1)
semilogx(E,m)%Wykres w skali log x dec
subplot(1,3,2)
semilogy(E,m);%Wykres w skali dec x log
subplot(1,3,3)
loglog(E,m) %wykres w skali log x lpg