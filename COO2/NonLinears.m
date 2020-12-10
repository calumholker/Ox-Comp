y = @Functions.fun1;
ydif = @Functions.fun2;
x1 = input("Bisection x1: ");
x2 = input("Bisection x2: ");
x0 = input("Newton Raphson x1: ");
x3 = 3;

while round(y(x3),9) ~= 0
    x3 = 0.5*(x1+x2);
    if y(x3) > 0
        if y(x1) > 0
            x1 = x3;
        else
            x2 = x3;
        end
    elseif y(x3) < 0
        if y(x1) > 0
            x2 = x3;
        else
            x1 = x3;
        end
    end
end

while round(y(x0),9) ~= 0
    x0 = x0 - (y(x0)/ydif(x0));
end


disp(fzero(y,3));
disp(round(x3,4));
disp(round(x0,4));
