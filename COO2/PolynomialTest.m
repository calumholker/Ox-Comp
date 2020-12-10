n = input('Number of x data points: ');
m = input('Order: ');
a = [];

for i=0:m
    prompt = ("Coefficient " + int2str(i) + ": ");
    a(i+1) = input(prompt);
end

e = input('Experimental r.m.s value: ');
inputdata = {n, m, a, e};
Poly = Polynomial(inputdata);

plot(Poly(1:end,1), Poly(1:end,2));
xlabel('x') ;
ylabel('y_e_r_r');
ax = gca;
ax.FontSize = 13;