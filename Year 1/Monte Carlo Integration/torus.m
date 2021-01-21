%Author: Calum Holker
%Calculates the mass, centre of mass and moments of inertia of a three dimensional torus

N = input("N: ");
lower_bound = [1,-3,-1];
upper_bound = [4,4,1];
pts = zeros(3,N);
dens = 1;
sums = zeros(14,1);
vol = (upper_bound(1) - lower_bound(1))*(upper_bound(2) - lower_bound(2))*(upper_bound(3) - lower_bound(3));
com = zeros (3,1);
comerror = zeros (3,1);
inertia = zeros (3,1);
inertiaerror = zeros(3,1);

pts(1,:) = (upper_bound(1)-lower_bound(1)).*rand(1,N) + lower_bound(1);
pts(2,:) = (upper_bound(2)-lower_bound(2)).*rand(1,N) + lower_bound(2);
pts(3,:) = (upper_bound(3)-lower_bound(3)).*rand(1,N) + lower_bound(3);

cond_func = @(pt) (((pt(3)^2) + ((sqrt(pt(1)^2+pt(2)^2)-3)^2)) < 1);
acc_pts = get_accepted_points(pts, cond_func);

funcp = @(pt) (dens);
sums(1) = calculate_sum(acc_pts, funcp);
funcp2 = @(pt) (dens^2);
sums(2) = calculate_sum(acc_pts, funcp2);
funcxp = @(pt) (pt(1)*dens);
sums(3) = calculate_sum(acc_pts, funcxp);
funcxp2 = @(pt) ((pt(1)*dens)^2);
sums(4) = calculate_sum(acc_pts, funcxp2);
funcyp = @(pt) (pt(2)*dens);
sums(5) = calculate_sum(acc_pts, funcyp);
funcyp2 = @(pt) ((pt(2)*dens)^2);
sums(6) = calculate_sum(acc_pts, funcyp2);
funczp = @(pt) (pt(3)*dens);
sums(7) = calculate_sum(acc_pts, funczp);
funczp2 = @(pt) ((pt(3)*dens)^2);
sums(8) = calculate_sum(acc_pts, funczp2);
funcy2z2p = @(pt) ((pt(2)^2+pt(3)^2)*dens);
sums(9) = calculate_sum(acc_pts, funcy2z2p);
funcy2z2p2 = @(pt) (((pt(2)^2+pt(3)^2)*dens)^2);
sums(10) = calculate_sum(acc_pts, funcy2z2p2);
funcz2x2p = @(pt) ((pt(3)^2+pt(1)^2)*dens);
sums(11) = calculate_sum(acc_pts, funcz2x2p);
funcz2x2p2 = @(pt) (((pt(3)^2+pt(1)^2)*dens)^2);
sums(12) = calculate_sum(acc_pts, funcz2x2p2);
funcx2y2p = @(pt) ((pt(1)^2+pt(2)^2)*dens);
sums(13) = calculate_sum(acc_pts, funcx2y2p);
funcx2y2p2 = @(pt) (((pt(1)^2+pt(2)^2)*dens)^2);
sums(14) = calculate_sum(acc_pts, funcx2y2p2);

mass = vol * (sums(1)/N);
masserror = vol * sqrt(((sums(2)/N)-((sums(1)/N)^2))/N);

for k = [1:3]
    com(k) = (vol * (sums(2*k+1)/N))/mass;
    comerror(k) = (vol * sqrt(((sums(2*k+2)/N)-((sums(2*k+1)/N)^2))/N))/mass;
    inertia(k) = vol * (sums(2*k+7)/N);
    inertiaerror(k) = vol * sqrt(((sums(2*k+8)/N)-((sums(2*k+7)/N)^2))/N);
end

disp("mass = " + mass + " ± " + masserror);
disp("centre of mass = ");

for k = [1:3]
    disp(com(k) + " ± " + comerror(k));
end

disp("moment of inertia xx = " + inertia(1) + " ± " + inertiaerror(1));
disp("moment of inertia yy = " + inertia(2) + " ± " + inertiaerror(2));
disp("moment of inertia zz = " + inertia(3) + " ± " + inertiaerror(3));
















