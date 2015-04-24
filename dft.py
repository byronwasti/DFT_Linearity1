from scipy.signal import blackmanharris
from numpy.fft import rfft, irfft, rfftfreq
from numpy import argmax
from pylab import subplot, plot, log, copy, show
from audiolab import flacread

filename = "sine82hz.flac"
signal, fs, enc = flacread(filename)
len_s = len(signal)/10
windowed = signal * blackmanharris(len(signal), sym=False)
freq = rfftfreq(len(signal), d=1)
f = rfft(windowed)
plot(freq,f)
show()
