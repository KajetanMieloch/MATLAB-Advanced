function draw(dl,R)
hold off;
[x,y] = meshgrid(0:10*dl:1.5*R,-1.5*R:10*dl:1.5*R);
[M,N] =  size(x);
    for k = 1:M
        for t = 1:N
            plot(x(k,t),y(k,t),'bx');
            hold on;
        end
    end
title('Elektron w jednorodnym polu magnetycznym');
text(x(M),y(N),'B','FontSize',12);