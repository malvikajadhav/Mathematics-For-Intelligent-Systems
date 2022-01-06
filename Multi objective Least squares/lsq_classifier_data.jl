import Random
# Dimensions and true w,v.
Random.seed!(1);
n = 50
N = 300
w_true = randn(n)
v_true = 5

# Generate training data X, y.
X = randn(n, N)
y = sign.(X'w_true .+ v_true + 10*randn(N))

# Generate test data X_test, y_test.
N_test = 100
X_test = randn(n, N_test)
y_test = sign.(X_test'w_true .+ v_true + 10*randn(N_test))

#YOUR CODE HERE

