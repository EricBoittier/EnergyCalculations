# L1a4eD_PSI.dat

# final sum of squares of residuals : 0.068842

FIT_LIMIT = 1e-9

# variables

a               = 2.74589
c               = 2414.59
d               = 2.01529
f               = 58.8088
g               = 922.912
h               = 8.88671
i               = 183.828
j               = 2839.45
k               = 7.40203
l               = 288.815
m               = 4077.08
n               = 3.52327
o               = 145.012
p               = 1306.33

myexp(x) = -x<-10 ? 0 : exp(-x)

G(x) = a * myexp((x)**2 /c) + d * myexp((x - f)**2 / g ) + \
h * myexp((x - i)**2 / j) + k * myexp((x - l)**2 / m) - n * myexp((x - o)**2 / p) 


fit G(x) 'L1a4eD_PSI.dat' via a, c, d, f, g, h, i , j, k, l, m, n, o, p

plot G(x), 'L1a4eD_PSI.dat'