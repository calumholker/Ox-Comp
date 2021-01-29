%Author: Calum Holker
%Calculates the integral described in func over a surface described in cond_func

N = input("N: ");

lower_bound = -0.5;
upper_bound = 0.5;
pts = (upper_bound-lower_bound).*rand(2,N) + lower_bound;

cond_func = @(pt) ((pt(1)^2 + pt(2)^2) <= 0.25);
acc_pts = get_accepted_points(pts, cond_func);
func = @(pt) (sin(log(pt(1)+pt(2)+1)));
area = calculate_sum(acc_pts, func)/N