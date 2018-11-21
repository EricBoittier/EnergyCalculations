# 2SO1e4_D_PHI.dat

FIT_LIMIT = 1e-9

# variables

d               = 3.709
f               = 50.0879
g               = 8398.17
h               = 5.53619
i               = 188.527
j               = 2282.69
k               = 6.7775
l               = 305.066
m               = 2758.26
n               = 2.77873
o               = 114.823
p               = 2416.66
q               = 1.4
r               = 164
s               = 61

myexp(x) = -x<-10 ? 0 : exp(-x)

G(x) = d * myexp((x - f)**2 / g ) + \
h * myexp((x - i)**2 / j) + k * myexp((x - l)**2 / m) - n * myexp((x - o)**2 / p) + q * myexp((x - r)**2 / s) 


fit G(x) '2SO1e4_D_PHI.dat' via d, f, g, h, i , j, k, l, m, n, o, p, q, r, s

plot G(x), '2SO1e4_D_PHI.dat'