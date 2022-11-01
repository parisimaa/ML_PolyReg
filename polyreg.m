% -------------------------------------------
% ECE 6143 Machine Learning - Parisima Abdali
% -------------------------------------------
% N16057177 - pa2297@nyu.edu
% -------------------------------------------

clc
clear
close all

S=load('problem1.mat');
% Split train and test sets
r=rng;
Indices=randperm(500);
rng(r);
% Spliting dataset to train and test sets
x_train= S.x(Indices(1:250),:);
y_train=S.y(Indices(1:250),:);
x_test=S.x(Indices(251:end),:);
y_test=S.y(Indices(251:end),:);
% Order of the polynomial (d)
d=20;
r_train=zeros(length(d),1);
r_test=zeros(length(d),1);
% Illustration of model on train and test set for different orders
for i=1:d
    [r_train(i,1),r_test(i,1),model,aux,aux_p]=polyfit(x_train,y_train,i,x_test,y_test);
    figure;
    subplot(1,2,1)
    scatter(x_train,y_train)
    hold on
    plot(aux,aux_p*model)
    legend('show','Train','Fit')
    title(['Order Fit Train: ',num2str(i)])
    grid on
    subplot(1,2,2)
    scatter(x_test,y_test)
    hold on
    plot(aux,aux_p*model)
    legend('show','Test','Fit')
    title(['Order Fit Test: ',num2str(i)])
    grid on
end
% Evaluating Error to underestand Overfitting and Underfitting
d=1:1:d;
figure;
subplot(2,1,1)
plot(d,r_train)
xlabel('Order D')
ylabel('Loss Train')
title('Crossvalidation for Train set')
grid on
subplot(2,1,2)
plot(d,r_test)
xlabel('Order D')
ylabel('Loss Test')
title('Crossvalidation for Test set')
grid on
% Finding the order of minimum loss for test set
[value,index]=min(r_test);
result={' Minimum error for test: ',value;' Order: ', index; ' Error value for train in this order: ',r_train(index)};
disp(result)

