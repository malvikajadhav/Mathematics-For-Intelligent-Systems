# Inputs:
# n is positive integer
# t is a m-vector 


# Vandermonde function calculates a m*n Vandermonde matrix for the given set of inputs
function Vandermonde(n,t)
    if n>0
        arr = (0:n-1)
        result = map(i -> t .^i , arr)
        final_matrix=hcat(result...)
    else 
        print("Invalid input for integer n")
    end
    
end

# Call to the function with random inputs
final_matrix = Vandermonde(6,[1,4,2,3])


# Result is the required Vandermonde matrix
final_matrix
