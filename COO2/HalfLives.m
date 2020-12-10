Xhalf = input("X half life: ");
Yhalf = input("Y half life: ");
N0 = input("Original size of X: ");
pops = zeros(51,3);
t = [0:50]

ax = log(2)/(Xhalf);
ay = log(2)/(Yhalf);

for i = 0:50
    NX = N0*exp(-ax*i);
    if ax ~= ay
        NY = N0*ax*(exp(-ax*i)-exp(-ay*i))/(ay-ax);
    else
        NY = N0*ax*i*exp(-ax*i);
    end
    NZ = N0 - NX - NY;
    pops(i+1,1) = NX;
    pops(i+1,2) = NY;
    pops(i+1,3) = NZ;
end

disp(pops);

plot(t, pops);
xlabel('t /years') 
ylabel('N /particles')
legend({'NX','NY','NZ'},'Location','northwest')
ax = gca;
ax.FontSize = 13;
