a = 1;

Q1 = 1;
V1 = [0,0];
Q2 = 1;
V2 = [a,0];
Q3 = 1;
V3 = [a,a];
Q4 = 1;
V4 = [0,a];

W1 = SilaCoulombaKM(Q1,V1,Q2,V2);
W2 = SilaCoulombaKM(Q1,V1,Q3,V3);
W3 = SilaCoulombaKM(Q1,V1,Q4,V4);

hold on
plot(V1(1),V1(2),"O");
plot(V2(1),V2(2),"O");
plot(V3(1),V3(2),"O");
plot(V4(1),V4(2),"O");


quiver(V1(1),V1(2),W1(1),W1(2));
quiver(V2(1),V2(2),W2(1),W2(2));
quiver(V3(1),V3(2),W3(1),W3(2));

Silawypadkowa = W1 + W2 + W3;
quiver(V1(1),V1(2),Silawypadkowa(1),Silawypadkowa(2))

text(V1(1)+0.05, V1(2)+0.05, sprintf('%.2e N', norm(W1)));
axis equal;
xlabel('x');
ylabel('y');
title('Siła wypadkowa na ładunek w punkcie V1');
hold off