function [R_train,R_test,model,aux,aux_p]=polyfit(Xtrain,Ytrain,D,Xtest,Ytest)

% -------------------------------------------
% ECE 6143 Machine Learning - Parisima Abdali
% -------------------------------------------
% N16057177 - pa2297@nyu.edu
% -------------------------------------------
% Xtrain = X Train Dataset
% Ytrain = Y Train Dataset
% D = Polynomial order 
% Xtest = X Test Dataset 
% Ytest = Y Test Dataset
% -------------------------------------------

% Train process
% Building polynomial function with order D for train set
x_p=zeros(length(Xtrain),D);
for i=1:D
    x_p(:,i)=Xtrain.^(D-i);
end
% Solved gradiant=0 for minimizing empirical risk
model=pinv(x_p)*Ytrain;
% finding the least emprical risk(error)
R_train=(1/(2*length(Xtrain)))*sum((Ytrain-x_p*model).^2);

% Test process
% Building polynomial function with order D for test set
x_pt=zeros(length(Xtest),D);
for j=1:D
    x_pt(:,j)=Xtest.^(D-i);
end
% Using estimated teta(model) for finding emprical risk
% We want to underestand how efficient is the model
R_test=(1/(2*length(Xtest)))*sum((Ytest-x_pt*model).^2);

% An auxiliary function to fit into train and test datasets plot
% limited to the start and end point of the Xtrain dataset
% with a proper choice of steps
aux=min(Xtrain):(max(Xtrain)/300):max(Xtrain);
aux_p=zeros(length(aux.'),D);
for k=1:D
    aux_p(:,k)=aux.'.^(D-k);
end

end