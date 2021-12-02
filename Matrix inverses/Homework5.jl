# Here we consider the above set of linear equations in the form AX = B, so we define
A = [1 1 1 -2 -2 ; 1 2 4 -10 -20; 1 3 9 -27 -81; 1 4 16 4 16; 1 5 25 20 100]
display(A)
B = [2 ; 5 ; 9 ; -1 ; -4]
display(B)

# Thus we find the required value of X
X = A\B
display(X)

using Pkg
Pkg.add("Plots")
Pkg.add("CalculusWithJulia")
using CalculusWithJulia
using Plots 

c_1 = 0.6296296296296255
c_2 = 0.6049382716049432
c_3 = -0.19753086419753174
d_1 = -0.5679012345679012
d_2 = 0.08641975308641975

f(t) = (c_1 + (c_2 * t) + (c_3 * (t^2)))/(1 + (d_1 * t) + (d_2 * (t^2)))
Plots.plot(f, 0, 6,xlabel="t",ylabel="f(t)",c = "red",legend = false)
scatter!(0:6,f, c = "blue", legend = false)

A = [1 1 1 1 ; -0.6 -0.2 0.2 0.6 ; 0.36 0.04 0.04 0.36 ; -0.216 -0.008 0.008 0.216]
A_inv = inv(A)
p = [2 ; 0 ; 2/3 ; 0]
display(A_inv)

w = A_inv * p
