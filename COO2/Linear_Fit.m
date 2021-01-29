function [data_out] = Linear_Fit(data_in)
    N = size(data_in, 1);
    xSum = 0;
    ySum = 0;
    x2Sum = 0;
    xySum = 0;
    rms = 0;
    yfiti = 0;
    for i=1:N
        xSum = xSum + data_in(i,1);
        ySum = ySum + data_in(i,2);
        x2Sum = x2Sum + (data_in(i,1))^2;
        xySum = xySum + (data_in(i,1))*(data_in(i,2));
    end
    X = [N xSum; xSum x2Sum];
    Y = [ySum; xySum];
    a = X\Y;
    for i = 1:N
        yfiti = a(1) + (a(2)*(data_in(i,1)));
        rms = rms + (data_in(i,2) - yfiti)^2;
    end
    rms = sqrt(rms/N);
    data_out = [a(1) a(2) rms];
end