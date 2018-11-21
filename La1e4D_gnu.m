# La1e4D

FIT_LIMIT = 1e-8

# variables

a               = 4.66492
b               = 61.4546
c               = 1280.97
d               = 0.318233
f               = 304.31
g               = 117.016
h               = 3.83616
i               = 188.537
j               = 1444.97
k               = 2.10042
l               = 123.976
m               = 496.776
n               = 0.511933
o               = 251.308
p               = 220.224
q               = 0.595518
r               = 374.815
s               = 720.646

myexp(x) = -x<-10 ? 0 : exp(-x)

G(x) = a * myexp((x - b)**2 /c) + d * myexp((x - f)**2 / g ) + \
h * myexp((x - i)**2 / j) + k * myexp((x - l)**2 / m) + n * myexp((x - o)**2 / p) \
 + q * myexp((x - r)**2 / s)


fit G(x) 'L1a4eD.dat' via a, b, c, d, f, g, h, i , j, k, l, m, n, o, p, q, r, s

plot G(x), 'L1a4eD.dat'