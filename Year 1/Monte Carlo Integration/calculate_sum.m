function [val] = calculate_sum(acc_pts, func)

%Author: Calum Holker
%Calculates the sum of func(pt) for every point in acc_pts
%Input:
%acc_pts - DxM matrix of points
%func - accepts a D dimensional vector and returns a value
%Output:
%val - sum of func(pt) for every point in acc_pts

    M = size(acc_pts, 2);
    val = 0;
    for i = [1:M]
        val = val + func(acc_pts(:,i));
    end
end