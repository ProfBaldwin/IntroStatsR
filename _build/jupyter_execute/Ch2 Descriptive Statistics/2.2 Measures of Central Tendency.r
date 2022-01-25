xbar = (1 + 1 + 1 + 2 + 2 + 3 + 4 + 4 + 4 + 4 + 4)/11
xbar

xbar = (3*1 + 2*2 + 1*3 + 5*4)/11
xbar

x = c(1, 1, 1, 2, 2, 3, 4, 4, 4, 4, 4)
n = length(x)

xbar = sum(x)/n
xbar

x = c(1, 1, 1, 2, 2, 3, 4, 4, 4, 4, 4)

quantile(x, probs = 0.50)

x = c(3, 4, 8, 8, 10, 11, 12, 13, 14, 15, 15, 16, 16, 17, 17, 18, 21, 22, 22, 24, 24, 25, 26, 26, 27, 27, 29, 29, 31, 32, 33, 33, 34, 34, 35, 37, 40, 44, 44, 47)

# Find the Mean
n = length(x)

xbar = sum(x)/n
xbar

# Find the Median
M = median(x)
M

x = c(3, 4, 5, 7, 7, 7, 7, 8, 8, 9, 9, 10, 10, 10, 10, 10, 11, 12, 12, 13, 14, 14, 15, 15, 17, 17, 18, 19, 19, 19, 21, 21, 22, 22, 23, 24, 24, 24, 24)

# Find the Mean
n = length(x)

xbar = sum(x)/n
xbar

# Find the Median
M = quantile(x, probs = 0.50)
M

x = c(42, 24, 35, 31.5, 32.5, 32, 48.5, 35.5, 38, 40, 20.5, 37, 34, 41.5, 43, 49, 48, 28, 35, 48.5, 22, 35.5, 44.5, 39, 21.5, 34.5, 40)

# Find the Mean
N = length(x)

mu = sum(x)/N
mu

# Find the Median
M = quantile(x, probs = 0.50)
M

xbar = (1*5000000 + 49*30000)/50
xbar

library(shape)

png("visual_median.png", width = 1000, height = 300)

rangebar = function(x0, x1, y, d, col){
    segments(x0, y-d, x0, y+d, lwd = 4, col = col)
    segments(x0, y, x1, y, lwd = 4, col = col)
    segments(x1, y-d, x1, y+d, lwd = 4, col = col)
}

rangebrace = function(x0, x1, y, d, col){
    Y = seq(y, y+d, length = 500)
    Xl = (x1 - x0)/4 * ( (2/d)^(1/3) * sign(Y - (y + d/2))*abs(Y - (y + d/2))^(1/3) + 1 ) + (x0 + x1)/2
    Xr = (x1 - x0)/4 * ( -(2/d)^(1/3) * sign(Y - (y + d/2))*abs(Y - (y + d/2))^(1/3) - 1 ) + (x0 + x1)/2
    lines(Xl, Y, lwd = 3, col = col)
    lines(Xr, Y, lwd = 3, col = col)
}

c1 = "blue3"
c2 = "forestgreen"
c3 = "red3"

a = 0
b = 9.5
c = 10
eps = 0.025

par(mar = c(0, 0, 0, 0))
plot(NULL, xlim = c(-0.1, 10.1), ylim = c(-2, 1), axes = FALSE, ann = FALSE)
rangebar(a, b-eps, 0, 0.15, col = c1)
rangebar(b+eps, c, 0, 0.15, col = c2)

text(x = (a + b-eps)/3, y = 0.3, labels = "$30,000", cex = 2, col = c1)
text(x = (a + b-eps)/3, y = -0.3, labels = "49 Values", cex = 2, col = c1)
text(x = (b+eps + c)/2, y = 0.3, labels = "$5,000,000", cex = 2, col = c2)
text(x = (b+eps + c)/2, y = -0.3, labels = "1 Value", cex = 2, col = c2)

rangebrace(a, (a + c)/2 - 4*eps, -1, 0.4, col = c3)
rangebrace((a + c)/2 + 4*eps, c, -1, 0.4, col = c3)
text(x = (3*a + c)/4, y = -1.2, labels = "Half of Data Values", cex = 2, col = c3)
text(x = (a + 3*c)/4, y = -1.2, labels = "Half of Data Values", cex = 2, col = c3)

Arrows((a + c)/2, -1.5, (a + c)/2, -0.17, lwd = 3, col = c3, arr.type = "triangle", arr.width = 0.3)
text(x = (a + c)/2, y = -1.5, labels = "Median", cex = 2, pos = 1, col = c3)

dev.off()
