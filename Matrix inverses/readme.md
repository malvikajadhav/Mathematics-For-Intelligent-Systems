## Homework 5
### Problem statement 11.11
Interpolation of rational functions. (Continuation of exercise 8.8.) Find a rational function
f(t) = c1 + c2t + c3t
2
1 + d1t + d2t
2
that satisfies the following interpolation conditions:
f(1) = 2, f(2) = 5, f(3) = 9, f(4) = −1, f(5) = −4.
In exercise 8.8 these conditions were expressed as a set of linear equations in the coefficients
c1, c2, c3, d1 and d2; here we are asking you to form and (numerically) solve the system
of equations. Plot the rational function you find over the range x = 0 to x = 6. Your
plot should include markers at the interpolation points (1, 2), . . . ,(5, −4). (Your rational
function graph should pass through these points.)

### Problem statement 11.12
Quadrature weights. Consider a quadrature problem (see exercise 8.12) with n = 4, with
points t = (−0.6, −0.2, 0.2, 0.6). We require that the quadrature rule be exact for all
polynomials of degree up to d = 3.
Set this up as a square system of linear equations in the weight vector. Numerically solve
this system to get the weights. Compute the true value and the quadrature estimate,
α =
Z 1
−1
f(x) dx, αˆ = w1f(−0.6) + w2f(−0.2) + w3f(0.2) + w4f(0.6),
for the specific function f(x) = e
x
