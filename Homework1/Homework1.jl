x = rand(10)
x

a = zeros(10)
a[5] = 1
a

import LinearAlgebra.dot
dot(a,x)

x = rand(3)
x

a = [0.3;0.4;0.3]

import LinearAlgebra.dot
dot(a,x)

x = rand(22)
x

a = zeros(22)
for i = 1:22
    if i%4 == 0
        a[i] = 1
    elseif i%7 == 0
        a[i] = -1 
    else
        a[i] = 0
    end
end
a

import LinearAlgebra.dot
dot(a,x)

x = rand(11)
x

a = zeros(11)
for i = 1:11
    if i > 3 && i < 9 
        a[i]=0.2
    end
end
a

import LinearAlgebra.dot
dot(a,x)
