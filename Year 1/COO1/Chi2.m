%Defines the data set, when importing the data set change the column names
%to x, y, yfit
chi2fit = chi2fit1;
sum = 0;
%Defines the size of the Error bars
err = 5;
%For loop that loops through each value in the data set 
%performs the calculation and adds it to the total sum
for i = 1:size(chi2fit,1)
    sum = sum + (((chi2fit.y(i)-chi2fit.yfit(i))^2)/(err^2));
end
%plots the points with the error bars
%repmat returns a matrix, must be done as the error must have the same
%dimenstions as the chi2fit
errorbar(chi2fit.x,chi2fit.y,repmat(err,length(chi2fit.x),1));
%plots the fitted curve on the same axis
hold on
plot(chi2fit.x,chi2fit.yfit);
disp(sum);