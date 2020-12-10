function [accepted_pts] = get_accepted_points(pts, cond_func)

%Author: Calum Holker
%Returns points from pts that return true in cond_func
%Input:
%pts - DxN matrix
%cond_func - accepts a D dimensional vector and returns ture or false
%Output:
%accepted_pts - returns DxM matrix with points that fufull cond_func

    N = size(pts, 2);
    D = size(pts, 1);
    accepted_pts = zeros(D,0);
    for i = [1:N]
        if cond_func(pts(:,i))
            accepted_pts = [accepted_pts, pts(:,i)];
        end
    end
end