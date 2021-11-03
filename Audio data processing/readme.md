## Homework 4
### Problem statement A.7.3
Audio filtering. When the vector x represents an audio signal, and h is another (usually much
shorter) vector, the convolution y = h ∗ x is called the filtered version of x, and h is called the filter
impulse response. Filters can be used to smooth out audio signals (which reduces high frquency
sounds and enhances low frequency sounds), or to sharpen them (which enhances high frequency
sounds and reduces low frequency sounds), as in audio bass and treble tone controls. In this problem
you will experiment with, and listen to, the effects of several audio filters.
The file audio_filtering_original.wav contains a 10-second recording with sample rate of f =
44100/sec. We let x denote the 441000-vector representing this recording. You can read in x and
the sample rate f using the following code:
```
Pkg.add("WAV")
using WAV
x, f = wavread("audio_filtering_original.wav");
x = vec(x);
```
To play the signal, run:
```
wavplay(x, f);
```
If this not supported on your system, you can write the signal into a file, download the file from
JuliaBox if you are using that, and then listen to it on your machine:
```
wavwrite(x, f, "filename.wav");
```
(a) 1ms smoothing filter. Let h
smooth be the 44-vector h
smooth =
1
44144. (The subscript 44 gives
the length of the vector.) The signal h
smooth ∗ x is the 1ms moving average of the input x. We
can construct the vector h
smooth and compute the output signal as follows:
```
h_smooth = 1 / 44 * ones(44);
output = conv(h_smooth, x);
wavplay(output, f);
```
Listen to the output signal and briefly describe the effect of convolving h
smooth with x in one
sentence.
(b) Echo filter. What filter (i.e., vector) h
echo has the property that h
echo ∗ x consists of the
original recording, plus an echo of the original recording 0.25 seconds delayed, with half the
original amplitude? Since sound travels at about 340m/s, this is equivalent to the effect of
hearing an echo from a wall about 42.5m away. Construct h
echo using Julia and listen to the
output signal h
echo ∗ x to confirm the effect. Form and listen to the signal h
echo ∗ h
echo ∗ x and
very briefly describe what you hear.
Hint. The entries of the output signal y = h
echo ∗ x satisfy yi = xi + 0.5xi−k, where we take
xj = 0 for j outside the range 1, . . . , 441000, and k is the number of samples in 0.25 seconds.
