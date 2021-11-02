Pkg.add("PyPlot")
Pkg.add("DSP")
Pkg.add("Plots")
using PyPlot 
using DSP 

# we generate a signal u of length 50 
u=rand((1,-1),50)
# Plot of signal u
stem(u)
ylabel("u")

# value of  c is specified in the question
c = [1,0.7,-0.3]
y = conv(c,u)
stem(y)
ylabel("y")
# Here length of y is 52

# value of equalizer h is as specified in the question
h = [0.9, -0.5, 0.5, -0.4, 0.3, -0.3, 0.2, -0.1]
z = conv(h,y)
stem(z)
ylabel("z")
# Here length of z is 59

include("channel_equalization_data.jl")
stem(c)
ylabel("c")

stem(h)
ylabel("h")

equalized_channel=conv(c,h)
stem(equalized_channel)

stem(s[1:100])

y = conv(c,s)
stem(y[1:100])

ỹ = conv(h,y)
stem(ỹ[1:100])

ŝ = 1(y .> 0.5)
stem(ŝ[1:100])

ŝ_eq = 1(ỹ .> 0.5)
stem(ŝ_eq[1:100])

count = 0
for i in 1:1000
    if s[i]!=ŝ[i]
        count=count+1
    end
end
BER_ŝ = count/(size(s)[1])    

count = 0
for i in 1:1000
    if s[i]!=ŝ_eq[i]
        count=count+1
    end
end
BER_ŝ_eq = count/(size(s)[1])      
