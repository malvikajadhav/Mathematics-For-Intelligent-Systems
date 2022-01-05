"""
File: iris_multiclass_helpers.jl
Authors: Reese Pathak, Stephen Boyd
------------------------------------
Helper methods for the iris dataset
multiclass classification problem.
"""

function argmax_by_row(A) 
    """
    Function: argmax_by_row(A)
    Usage: class_labels = argmax_by_row(Y_tilde)
    ---------------------------------------------
    Returns a vector with each entry equal to 
    the index of maximum element (argmax) for the 
    corresponding row vector in the input matrix 
    A. Data type is Float64.  
    """
    a = findmax(A, dims=2)[2]
    b = [ i[2] for i in a ] 
    return vec(b)
end


function confusion_matrix(y_hat, y_true)
    """
    Function: confusion_matrix(y_hat, y_true)
    Usage: conf_matrix = confusion_matrix(y_hat, y_test)
    ----------------------------------------------------
    Returns a 3x3 matrix where the C[i,j] is the number 
    of predictions for which y_hat[k] == i and 
    y_hat[k] == j. Data type is Float64
    """
    C = zeros(3,3)
    for i in 1:3
        for j in 1:3
            C[i,j] = 1.0 * sum((y_hat .== i) .& (y_true .== j))
        end
    end
    return C
end