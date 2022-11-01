# ML_Polynomial_Reg
This is a problem of fitting a Polynomial function for finding a one-dimentional function. 
d is the degree of the polynomial.<br>
We need to find a theta that minimize the risk: <br>
<img width="413" alt="Screen Shot 2022-11-01 at 3 51 49 PM" src="https://user-images.githubusercontent.com/54392924/199325963-c2210330-7322-4ab2-a240-373f3cb82616.png"> <br> 
Use Problem1.mat file as the dataset which consists of input variable X and output Y. 
Split the dataset randomly into training and test sets (you need to adjust some parameters for other datasets).
Cross-validation has been used for finding the optimum order of the polynomial function. <br>
Result: <br>
<img width="618" alt="Screen Shot 2022-11-01 at 3 58 25 PM" src="https://user-images.githubusercontent.com/54392924/199327008-75d1199b-d232-42dc-a938-7987dd70a062.png"><br>
By increasing the order of polynomial function training loss will decrease significantly and our model will adjust to training set almost perfect. However, as the orders increase our model performance on test set will not be stable and at some point, not only loss function will not improve but also will start increasing again. The point in which the minimum loss results for test set is the critical point between underfitting and overfitting of the system. In this case, the order of D = 9 is our critical point. ![image](https://user-images.githubusercontent.com/54392924/199327873-df7575e9-cf29-4a88-a7c8-2d074e54d7f2.png)

