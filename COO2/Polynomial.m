function [data_out] = Polynomial(data_in)
    disp(data_in);
    x = linspace(-5, 5, data_in{1}(1));
    y = [];
    yhold = 0;
    yerr = [];
    for xi = x
        for i=0:data_in{2}(1)
            yhold = yhold + ((data_in{3}(i+1))*(xi)^i);
        end
        p = find(x==xi);
        y(p)=yhold;
        yerr(p) = (y(p) + (data_in{4}(1))*randn());
        yhold = 0;
    end
    data_out = [x',yerr'];
end
    