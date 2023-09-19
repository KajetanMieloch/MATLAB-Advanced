%a
t = linspace(0,1.1,11); %Wektor t
x = [33.5, 29.5, 26.5, 21.5, 20.5, 17.5, 14.5, 11.5, 8.5, 5.5, 2.5]; %Wektor x
xx = linspace(33.5, 2.5, 11); %Wektor xx
dx = 0.5; %Zmienna dx
dt = 0.05; %Zmienna dt
hold on
errorbar(x, t); %Wykres x od t, z błędem dt
hold off

%b
p = polyfit(t, x, 1); %Tworzymy zmienną p, po przez polyfit
r = polyval(p, t); %Tworzymy zmienną r, po przez polyval z polyfit
a = 1; %Tworzymy zmienną a
b = 0; %Tworzymy zmienną b
pp = a .*xx + b; %Tworzymy wektor pp
v = p(1); %Tworzymy zmienną v, przechowującą prędkość
figure
hold on
errorbar(x, t, dt); %Rysujemy wykres x od t, z błędem dt
plot(r, t); %Rysujemy wykres r od t
plot(pp, t); %Rusyjemy wykres pp od t
hold off
fprintf('Prędkosc wynosi %.2f cm/s\n', v); %Wypisujemy wartość prędkości
