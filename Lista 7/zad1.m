clear;
Q = 1;
a = 10;
EPS0 = 1;
rho = Q/a;
dl = 0.001*a;
xline = -a/2 : dl : a/2;
yline = zeros (1,length (xline));

xline2 = zeros (1,length (xline));
yline2 = -a/2 : dl : a/2;

xline3 = -a/2 : dl : a/2;
yline3 = -a/2 : dl : a/2;


v = -0.825*a: 0.15*a : 0.975*a;
u = -0.525*a: 0.15*a : 0.675*a;
[x,y] = meshgrid(v,u);
[M,N] = size(x);
for i = 1 : M
    for j = 1 : N
        for t = 1 : length(xline)
            r(i,j,t,:) = [x(i,j) - xline(t) y(i,j) - yline(t)];
            rabs(i,j,t) = wektorDlug(r(i,j,t,:));
            runit(i,j,t,:) = r(i,j,t,:)/rabs(i,j,t);
            E(i,j,t,:) = rho*dl*runit(i,j,t,:)/(4*pi*EPS0*rabs(i,j,t)^2);
        end;
        Etotx(i,j) = sum(E(i,j,:,1));
        Etoty(i,j) = sum(E(i,j,:,2));
    end;
end;
hold on
subplot(3,1,1)
line([-a/2 a/2],[0 0], "Color","r");
hold on;
quiver(v,u,Etotx,Etoty);
hold off;
title("Natėzenie pola elektrycznego");
xlabel("x[m]");
ylabel("y[m]");
hold off


for i = 1 : M
    for j = 1 : N
        for t = 1 : length(xline2)
            r(i,j,t,:) = [x(i,j) - xline2(t) y(i,j) - yline2(t)];
            rabs(i,j,t) = wektorDlug(r(i,j,t,:));
            runit(i,j,t,:) = r(i,j,t,:)/rabs(i,j,t);
            E(i,j,t,:) = rho*dl*runit(i,j,t,:)/(4*pi*EPS0*rabs(i,j,t)^2);
        end;
        Etotx(i,j) = sum(E(i,j,:,1));
        Etoty(i,j) = sum(E(i,j,:,2));
    end;
end;


hold on
subplot(3,1,2)
line([0 0],[-a/2 a/2], "Color","r");
hold on;
quiver(v,u,Etotx,Etoty);
hold off;
title("Natėzenie pola elektrycznego");
xlabel("x[m]");
ylabel("y[m]");
hold off

for i = 1 : M
    for j = 1 : N
        for t = 1 : length(xline3)
            r(i,j,t,:) = [x(i,j) - xline3(t) y(i,j) - yline3(t)];
            rabs(i,j,t) = wektorDlug(r(i,j,t,:));
            runit(i,j,t,:) = r(i,j,t,:)/rabs(i,j,t);
            E(i,j,t,:) = rho*dl*runit(i,j,t,:)/(4*pi*EPS0*rabs(i,j,t)^2);
        end;
        Etotx(i,j) = sum(E(i,j,:,1));
        Etoty(i,j) = sum(E(i,j,:,2));
    end;
end;

hold on
subplot(3,1,3)
line([-a/2 a/2],[-a/2 a/2], "Color","r");
hold on;
quiver(v,u,Etotx,Etoty);
hold off;
title("Natėzenie pola elektrycznego");
xlabel("x[m]");
ylabel("y[m]");
hold off

% Długo ́s ́c wektora% Funkcja, która oblicza długo ́s ́c zadanego wektora
% (wektor kolumnowy lub rz ̨edowy).
function mag = wektorDlug(wektor)
[m,n] = size(wektor)
if (m~=1)&&(n~=1)
 mag = 0;
 disp("Błąd - niewła ́sciwy rozmiar wektora ");
else mag = sqrt(sum(wektor.^2));
end
end