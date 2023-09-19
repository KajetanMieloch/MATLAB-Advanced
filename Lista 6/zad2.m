[X,Y] = meshgrid(1:10,1:10);

Q1 = 1;
Q2 = 1;

x1 = 3;
y1 = 5;
x2 = 8;
y2 = 5;

[Ex Ey] = SilaCoulombaKM(Q1,Q2,x1,x2,y1,y2,X,Y)


subplot(2, 1, 1)
contourf(X,Y,Ex)
title('Electric field for same charges')

Q2 = -Q2;

[Ex Ey] = SilaCoulombaKM(Q1,Q2,x1,x2,y1,y2,X,Y)


subplot(2, 1, 2)
contourf(X,Y,Ex)
title('Electric field for opposite charges')
