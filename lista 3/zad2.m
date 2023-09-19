dane = load('pompa.dat');
p = dane(:,2)
t = dane(:,1)

%Wyznaczamy tau
p_log = log(p);
pf = polyfit(t, p_log, 1);
p0 = exp(pf(2));
tau = -1 / pf(1);

%podwykres 1
subplot(2,1,1)
plot(t, p);
xlabel('Czas [s]')
ylabel('Ciśnienie [Pa]')
title('Wykres ciśnienia w czasie (skala liniowa)')

%Podwykres 2
subplot(2,1,2)
semilogy(t, p);
xlabel('Czas [s]')
ylabel('Ciśnienie [Pa]')
title('Wykres ciśnienia w czasie (skala półlogarytmiczna)')

%Rysujemy wykresy na 1
hold on;
subplot(2,1,1)
subplot(2,1,2);
hold off;

subplot(2,1,1); %Dodajemy do podwykresu 1
hold on;
plot(t, p0*exp(-t/tau), '-');
text(13, 390, sprintf('p(t) = %.2f e^{-t/%.2f}', p0, tau)); %Rysujemy linie błędu
subplot(2,1,2); %Dodajemy do podwykresu 2
hold on;
semilogy(t, p0*exp(-t/tau), '-'); %Rysujemy linie błędu
text(13, 45, sprintf('p(t) = %.2f e^{-t/%.2f}', p0, tau));


saveas(gcf, 'wykresZPompy.png', 'png');
saveas(gcf, 'wykresZPompy.jpg', 'jpg');