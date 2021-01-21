Input = Poly;
Data = Linear_Fit(Input);
yfit = Data(:,1) + (Data(:,2) * Input(:,1));
fitted = [Input(:,1), Input(:,2), yfit];

plot(Input(:,1), yfit);
hold on
plot(Input(:,1), Input(:,2));
xlabel('x') 
ylabel('y')
legend({'fitted y values','y values'},'Location','northwest')
ax = gca;
ax.FontSize = 13;

disp(fitted);
disp("a = " + Data(1));
disp("b = " + Data(2));
disp("r = " + Data(3));