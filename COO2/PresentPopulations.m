N0 = input("Original size of X: ");
ax = input("X decay rate: ");
ay = input("Y decay rate: ");
t = input("Time t: ");

NX = N0*exp(-ax*t);
if ax ~= ay
    NY = N0*ax*(exp(-ax*t)-exp(-ay*t))/(ay-ax);
else
    NY = N0*ax*t*exp(-ax*t);
end
NZ = N0 - NX - NY;

disp("NX = " + NX);
disp("NY = " + NY);
disp("NZ = " + NZ);