## Homework 4
### Problem statement A.7.1
Equalization in communication. Run the file channel_equalization_data.jl, which will define
a message s, a channel c, and an equalizer h. (Your are welcome to look inside the file to see how
we designed the equalizer.)
Plot c, h, and h ∗ c. Make a brief comment about the channel and equalized channel impulse
responses.
Plot s, y, and ˜y over the index range i = 1, . . . , 100. Is it clear from this plot that ˆs = round(y1:N )
will be worse estimate of s than ˆs
eq = round(˜y1:N )?
Report the BER for ˆs (estimating the message without equalization), and for ˆs
eq (estimating the
message with equalization).
Hint: To round a real vector x to {0, 1} in Julia you can use (x .> 0.5), which yields a Boolean
vector. You can convert it to an integer vector (say, for plotting) by multiplying by 1. That is,
1*(x .> 0.5).
