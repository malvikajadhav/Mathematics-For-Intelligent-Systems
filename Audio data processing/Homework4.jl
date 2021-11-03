Pkg.add("WAV")
using WAV
x, f = wavread("audio_filtering_original.wav")
x = vec(x)

wavplay(x, f)

h_smooth = 1 / 44 * ones(44)
output = conv(h_smooth, x)
wavplay(output, f)

k=Int(f*0.25)

h_echo=zeros(11026)
h_echo[1]=1
h_echo[11026] = 0.5

echo = conv(h_echo,x)
wavplay(echo, f)

desired_sound=conv(echo,h_echo)
wavplay(desired_sound, f)
