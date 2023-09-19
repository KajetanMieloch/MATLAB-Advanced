function [Ex Ey] = SilaCoulombaKM(Q1,Q2,x1,x2,y1,y2,X,Y)
    k = 1
    Ex1 = k*Q1.*(X-x1)./((X-x1).^2+(Y-y1).^2).^(3/2);
    Ey1 = k*Q1.*(Y-y1)./((X-x1).^2+(Y-y1).^2).^(3/2);
    
    Ex2 = k*Q2.*(X-x2)./((X-x2).^2+(Y-y2).^2).^(3/2);
    Ey2 = k*Q2.*(Y-y2)./((X-x2).^2+(Y-y2).^2).^(3/2);
    
    Ex = Ex1 + Ex2
    Ey = Ey1 + Ey2
end