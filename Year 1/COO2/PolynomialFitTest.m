order = input("Polynomial order: ");
enter = {Poly, 3};
fitted = Polynomial_Fit(enter)
m = size(fitted,1);
x = Poly(:,1);
n = size(Poly(:,1),1);
y = Poly(:,2);
yfit = zeros(100,1);
count = 1;
newx = linspace(Poly(1,1),Poly(n,1),100);
for i = 0:m-1
    for j = 1:100
        yfit(count) = yfit(count) + (fitted(i+1)*newx(j)^i);
        count = count+1;
    end
    count = 1;
end

plot(newx, yfit);
hold on
plot(x, y);
xlabel('x') 
ylabel('y')
legend({'fitted y values','y values'},'Location','northwest')
ax = gca;
ax.FontSize = 13;