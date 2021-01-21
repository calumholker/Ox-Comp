function [image_out] = wavy_image(image_in)
    Y = size(image_in, 1);
    X = size(image_in, 2);
    %A and k are the variables used to vary the amount of shift
    A = 50;
    k = 1/30;
    %Max shift is the greates amount of shift we shall see
    max_shift = A;
    %Returns black where there are now blank spaces on the edges
    image_out = zeros(Y, X+max_shift, 3);
    for y=1:Y
        local_shift = ceil(A*(sin(k*y))^2);
        local_x = 1:X;
        local_x = local_x + local_shift;
        image_out(y, local_x, :)=image_in(y, :, :);
    end
end
