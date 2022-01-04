## Homework 6
### Problem statement 12.1
Solving least squares problems in Julia. Generate a random 20×10 matrix A and a random 20-vector
b.
(a) Compute the solution ˆx of the associated least squares problem using the methods listed below,
and verify that the solutions found are the same, or more accurately, very close to each other;
they will be very slightly different due to small roundoff errors in the computations.
• Using the Julia backslash operator.
• Using ˆx = (AT A)
−1AT
b.
• Using ˆx = A†
b.
Hints. In Julia, inv() computes the inverse matrix, pinv() computes the pseudo-inverse
matrix, and A\b directly solves the least squares problem.
(b) Let ˆx be one of the solutions found in part (a). Generate a random nonzero 10-vector δ and
verify that kA(ˆx + δ) − bk
2 > kAxˆ − bk
2
. Repeat several times with different values of δ; you
might try choosing a small δ (say, by scaling the original random vector).
Be sure to submit your code, including the code that checks if the solutions in part (a) are close to
each other, and whether the expected inequality in part (b) holds.

### Problem statement 12.2
Julia timing test for least squares. Determine how long it takes for your computer to solve a least
squares problem with m = 100000 equations and n = 100 variables. (You can use the backslash
operator.)
Remark. Julia compiles just in time, so you should run the code a few times to get the correct
time.

### Problem statement 13.3
Auto-regressive time series prediction. Suppose that x is an N-vector representing time series data.
The (one step ahead) prediction problem is to guess xt+1, based on x1, . . . , xt
. We will base our
prediction ˆxt+1 of xt+1 on the previous M values, xt
, xt−1, . . . , xt−M+1. (The number M is called
the memory length of our predictor.) When the prediction is a linear function,
xˆt+1 = β1xt + β2xt−1 + · · · + βMxt−M+1,
it is called an auto-regressive predictor. (It is possible to add an offset to ˆxt+1, but we will leave it
out for simplicity.) Of course we can only use our auto-regressive predictor for M ≤ t ≤ N − 1.
Some very simple and natural predictors have this form. One example is the predictor ˆxt+1 = xt
,
which guesses that the next value is the same as the current one. Another one is ˆxt+1 = xt + (xt −
xt−1), which guesses what xt+1 is by extrapolating a line that passes through xt and xt−1.
We judge a predictor (i.e., the choice of coefficients βi) by the mean-square prediction error

![image](https://user-images.githubusercontent.com/20522169/148097066-fe5cc0ff-90d4-4398-9c4f-71f7c06bb8fb.png)

A sophisticated choice of the coefficients βi
is the one that minimizes J. We will call this the
least-squares auto-regressive predictor.

(a) Find the matrix A and the vector b for which J = kAβ − bk
2/(N − M). This allows you
to find the coefficients that minimize J, i.e., the auto-regressive predictor that minimizes the
mean-square prediction error on the given time series. Be sure to give the dimensions of A
and b.
(b) For M = 2, . . . , 12, find the coefficients that minimize the mean-square prediction error on
the time series x_train given in time_series_data.jl. The same file has a second time
series x_test that you can use to test or validate your predictor on. Give the values of the
mean-square error on the train and test series for each value of M. What is a good choice of
M? Also find J for the two simple predictors described above.
Hint. Be sure to use the toeplitz function contained in time_series_data.jl. It’ll make
your life alot easier. Documentation for the function is also contained in time_series_data.jl.
