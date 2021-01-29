y = @Functions.Osci;
x = input("x: ");
n = input("n: ");
h = x/n;

int = 0;
int = int + y(0);
int = int + y(n*h);
for i = 1:n-1
    int = int + 2*y(i*h);
end
for i = 1:n
    int = int + 4*y((i-0.5)*h);
end
int = int * (h/6);

disp("erf(" + x + ") = "+ sprintf('%0.10f',erf(1)));
disp("erf2(" + x + ") = " + sprintf('%0.10f',int) + " at n = " + n);