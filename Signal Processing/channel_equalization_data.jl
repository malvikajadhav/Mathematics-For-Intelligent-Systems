function toeplitz(b, n)
    m = length(b);
    T = zeros(n+m-1, n);
    for i in 1:n+m-1
        for j in 1:n
            if 1 <= i-j+1 && i-j+1 <= m
                T[i,j] = b[i-j+1];
            end
        end
    end
     
    return T;
end

N = 1000;
m = 5;

c = [1, .7, -.3, -.1, .05];

T = toeplitz(c, m);

e_m = zeros(2*m-1);
e_m[1] = 1;

h = T\e_m;
s = (rand(N) .> .5);
