function [data_out] = Polynomial_Fit(data_in)
    N = size(data_in{1}, 1);
    m = data_in{2}(1);
    X = zeros(m,m);
    Y = zeros(m,1);
    sum = 0;
    for k = 0:m
        for j = 0:m
            for i = 1:N
                sum = sum + (data_in{1}(i,1))^(k+j);
            end
            X(k+1,j+1) = sum;
            sum = 0;
        end
        for i = 1:N
            sum = sum + ((data_in{1}(i,1))^(k)*(data_in{1}(i,2)));
        end
        Y(k+1,1) = sum;
        sum = 0;
    end
    a = X\Y;
    data_out = a;
end


    
        