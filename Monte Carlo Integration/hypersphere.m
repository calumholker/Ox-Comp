%Author: Calum Holker
%Calculates the area of a hypersphere of D dimensions

N = input("N: ");
D = input("D: ");
lower_bound = -1;
upper_bound = 1;

pts = (upper_bound-lower_bound).*rand(D,N) + lower_bound;
cond_func = @(pt) ((sum(pt.^2)) < 1);
acc_pts = get_accepted_points(pts, cond_func);
func = @(pt) (1);
area = (calculate_sum(acc_pts,func)/N)*1024