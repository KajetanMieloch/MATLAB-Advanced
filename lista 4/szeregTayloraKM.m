function e = szeregTayloraKM(x)
    e = 1 + x;
    while(e < 10^-6) 
        e = e + (x^(2*n) / factorial(2*n));
    end
end

