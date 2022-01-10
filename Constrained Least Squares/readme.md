## Homework 8
### Problem statement 16.2
Julia timing test for least-norm. Determine how long it takes for your computer to solve a leastnorm problem with m = 600 equations and n = 4000 variables. (You can use the backslash
operator.) What approximate flop rate does your result suggest?<br>
Remark. Julia compiles just in time, so you should run the code a few times to get the correct
time.

### Problem statement 16.3
Constrained least squares in Julia. You are asked to write some Julia code to compute the ˆx that
minimizes ||Ax − b||^2 subject to Cx = d, where A is an m × n matrix, b is an m-vector, C is a
p × n matrix, and d is a p-vector. These are given as the Julia quantities A, b, C, and d, and the
dimensions m, n, and p are given as m, n, and p. You are to put the value of ˆx in xhat. (You can
assume that the associated KKT matrix is invertible.)
Write two lines of Julia code below that carries this out. Your code should be simple and clear.
You do not need to justify your answer.
Hint. Recall that the optimality conditions for this constrained least squares problem are
![image](https://user-images.githubusercontent.com/20522169/148823969-098975c2-99a5-4515-84a3-7f5e72ccff68.png)
where z is the vector of Lagrange multipliers.
