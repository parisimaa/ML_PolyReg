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
By increasing the order of polynomial function training loss will decrease significantly and our model will adjust to training set almost perfect. However, as the orders increase our model performance on test set will not be stable and at some point, not only loss function will not improve but also will start increasing again. The point in which the minimum loss results for test set is the critical point between underfitting and overfitting of the system. In this case, the order of D = 9 is our critical point. <br>
## Order d=1:
<img width="521" alt="Screen Shot 2022-11-01 at 4 09 18 PM" src="https://user-images.githubusercontent.com/54392924/199332504-d0442b15-52f9-4f3d-a1a5-01e041462be2.png"> <br>
## Order d=3:
<img width="519" alt="Screen Shot 2022-11-01 at 4 09 43 PM" src="https://user-images.githubusercontent.com/54392924/199332464-a929fae9-c977-439b-a6b5-d05ec8975294.png"> <br>
## Order d=5:
<img width="557" alt="Screen Shot 2022-11-01 at 4 10 09 PM" src="https://user-images.githubusercontent.com/54392924/199332422-5cae3c2d-99de-4f25-bb36-fa0cedf5ef15.png"> <br>
## Order d=9:
<img width="519" alt="Screen Shot 2022-11-01 at 4 10 32 PM" src="https://user-images.githubusercontent.com/54392924/199332388-8c040402-1d03-4500-8a7f-857bb69147a5.png">






