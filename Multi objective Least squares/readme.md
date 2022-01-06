## Homework 7
### Problem statement 15.2
Least squares classification with regularization. The file lsq_classifier_data.jl contains feature
n-vectors x1, . . . , xN , and the associated binary labels, y1, . . . , yN , each of which is either +1 or −1.
The feature vectors are stored as an n × N matrix X with columns x1, . . . , xN , and the labels are
stored as an N-vector y. We will evaluate the error rate on the (training) data X, y and (to check
if the model generalizes) a test set Xtest, ytest, also given in lsq_classifier_data.jl. You may
use LinearLeastSquares for all parts of the problem. Include your Julia code in your solution.
<br>
![image](https://user-images.githubusercontent.com/20522169/148424522-a220a481-916c-431e-964e-5cb4e8974e11.png)
where λ > 0 is the regularization parameter, for a range of values of λ. We suggest the range
10−1
to 104
, say, 100 values logarithmically spaced. The function logspace may be useful.
Use it to plot the training and test set errors against log10(λ). Suggest a reasonable choice
of λ. Again, there is no need to report the β, v values, just attach the plot and a reasonable
value of λ.

### Problem statement 15.3
Estimating the elasticity matrix. In this problem you create a standard model of how demand varies
with the prices of a set of products, based on some observed data. There are n different products,
with (positive) prices given by the n-vector p. The prices are held constant over some period, say, a
day. The (positive) demands for the products over the day is given by the n-vector d. The demand
in any particular day varies, but it is thought to be (approximately) a function of the prices. The
units of the prices and demands don’t really matter in this problem. Demand could be measured
in 10000 units, and prices in $100.
The nominal prices are given by the n-vector p nom. You can think of these as the prices that
have been charged in the past for the products. The nominal demand is the n-vector d
nom. This is the average value of the demand, when the prices are set to p nom. (The actual daily demand
fluctuates around the value d nom.) You know both p nom and d nom. We will describe the prices by
their (fractional) variations from the nominal values, and the same for demands. We define δ,p and δ
d as the (vectors of) relative price change and demand change:

![image](https://user-images.githubusercontent.com/20522169/148425470-d518c927-c3a4-4f3c-8e18-0d3522b7ed31.png)
Explain how you would estimate E, given this price-demand data. Be sure to explain how you will
test for, and (if needed) avoid over-fit. <br>
Hint. You might find it easier to separately fit the models δ
di ≈ e˜Tiδp, where ˜e
Ti is the ith row of E.
(We use the tilde above ei to avoid conflict with the notation for unit vectors.)
Carry out your method using the price and demand data in the matrices Prices and Demands,
found in price_elasticity.jl. Give your estimate Eˆ, and guess (roughly) how accurate your
model δd = Eδˆ p might be (in terms of RMS prediction error) on unseen data.
Here are some facts about elasticity matrices that might help you check that your estimates make
sense (but you don’t need to incorporate this information into your estimation method). The
diagonal entries of E are always negative, and typically on the order of one. (This means that
when you raise the price of one product only, demand for it goes down by a similar fractional
amount as the price increase.) The off-diagonal entries can have either sign, and are typically (but
not always) smaller than one in magnitude.
