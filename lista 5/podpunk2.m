Q1 = 1;
V1 = [1,0,0];
Q2 = -2;
V2 = [0,1,0];
Q3 = 3.2;
V3 = [0,0,1];

W1 = SilaCoulombaKM(Q1,V1,Q2,V2,3);
W2 = SilaCoulombaKM(Q1,V1,Q3,V3,3);

hold on
plot3(V1(1),V1(2),V1(3),"O");
plot3(V2(1),V2(2),V2(3),"O");
plot3(V3(1),V3(2),V3(3),"O");

text(V1(1)+0.05,V1(2)+0.05,V1(3)+0.05,"Q1")
text(V2(1)+0.05,V2(2)+0.05,V2(3)+0.05,"Q2")
text(V3(1)+0.05,V3(2)+0.05,V3(3)+0.05,"Q3")

quiver3(V1(1),V1(2),V1(3),W1(1),W1(2),W1(3));
text(V1(1)+W1(1)/2,V1(2)+W1(2)/2,V1(3)+W1(3)/2,"Sila 1");
quiver3(V1(1),V1(2),V1(3),W2(1),W2(2),W2(3));
text(V1(1)+W2(1)/2,V1(2)+W2(2)/2,V1(3)+W2(3)/2,"Sila 2");

Silawypadkowa = W1 + W2;
quiver3(V1(1),V1(2),V1(3),Silawypadkowa(1),Silawypadkowa(2),Silawypadkowa(3))
text(V1(1)+Silawypadkowa(1)/2,V1(2)+Silawypadkowa(2)/2,V1(3)+Silawypadkowa(3)/2,"Sila wypadkowa");

axis equal;
xlabel('x');
ylabel('y');
zlabel("z");
title('Siła wypadkowa na ładunek w punkcie V1');
hold off