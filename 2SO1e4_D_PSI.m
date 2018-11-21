# 2SO1e4_D_PSI.dat

FIT_LIMIT = 1e-8

# variables

a = 4.66
b = 62
c = 1900
d = 1.65
f = 127
g = 330
h = 3.7
i = 190
j = 1500
k = 0.85
l = 244
m = 560
n = 0.22
o = 310
p = 260
q = 1.43
r = 375
s = 840

myexp(x) = -x<-10 ? 0 : exp(-x)

G(x) = a * myexp((x - b)**2 /c) + d * myexp((x - f)**2 / g ) + \
h * myexp((x - i)**2 / j) + k * myexp((x - l)**2 / m) + n * myexp((x - o)**2 / p) \
 + q * myexp((x - r)**2 / s)


fit G(x) '2SO_1e4_D_PSI.dat' via a, b, c, d, f, g, h, i , j, k, l, m, n, o, p, q, r, s

plot G(x), '2SO_1e4_D_PSI.dat'