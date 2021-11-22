png("sd_example.png", width = 1000, height = 1000)

library("beeswarm")

rangebrace = function(x, y0, y1, d, col){
    X = seq(x, x-d, length = 500)
    Ytop = (y1 - y0)/4 * ( (2/d)^(1/3) * sign(X - (x - d/2))*abs(X - (x - d/2))^(1/3) + 1 ) + (y0 + y1)/2
    Ybot = (y1 - y0)/4 * ( -(2/d)^(1/3) * sign(X - (x - d/2))*abs(X - (x - d/2))^(1/3) - 1 ) + (y0 + y1)/2
    lines(X, Ytop, lwd = 3, col = col)
    lines(X, Ybot, lwd = 3, col = col)
}

rangebar = function(x, y0, y1, d, col){
    segments(x-d, y0, x+d, y0, lwd = 3, col = col)
    segments(x, y0, x, y1, lwd = 3, col = col)
    segments(x-d, y1, x+d, y1, lwd = 3, col = col)
}

x1 = rnorm(100, mean = 3, sd = 1.5)
x2 = rnorm(100, mean = -1, sd = 3.5)

par(mar = c(2, 3.5, 2, 0))
beeswarm(x = list(x1, x2), pch = 21, col = "black", bg = "gray70", 
         cex = 2.5, cex.axis = 2, cex.main = 2, main = "The Standard Deviations of Two Data Sets", xlim = c(0.4, 2.4), xaxt = "n", yaxt = "n")
axis(1, at = c(1, 2), labels = c("Data Set 1", "Data Set 2"), cex.axis = 2)
axis(2, at = seq(floor(min(c(x1), c(x2))), ceiling(max(c(x1),c(x2))), 1), cex.axis = 2, las = 2)

d = 0.2

segments(1.0 - d, mean(x1), 1.0 + d, mean(x1), lwd = 4, lty = "dotted", col = "blue3")
segments(2.0 - d, mean(x2), 2.0 + d, mean(x2), lwd = 4, lty = "dotted", col = "blue3")

text(x = 1.0 + d, y = mean(x1), labels = "Mean\nData Set 1", cex = 2, col = "blue3", pos = 4)
text(x = 2.0 + d, y = mean(x2), labels = "Mean\nData Set 2", cex = 2, col = "blue3", pos = 4)

eps = 0.05
rangebar(x = 1.0 - d, y0 = mean(x1) + eps, y1 = mean(x1) + sd(x1), d = 0.02, col = "red3")
rangebar(x = 1.0 - d, y0 = mean(x1) - sd(x1), y1 = mean(x1) - eps, d = 0.02, col = "red3")
rangebar(x = 2.0 - d, y0 = mean(x2) + eps, y1 = mean(x2) + sd(x2), d = 0.02, col = "red3")
rangebar(x = 2.0 - d, y0 = mean(x2) - sd(x2), y1 = mean(x2) - eps, d = 0.02, col = "red3")

text(x = 1.0-d, y = mean(x1) + 0.5*sd(x1), labels = "Standard Deviation\nData Set 1", cex = 2, col = "red3", pos = 2)
text(x = 1.0-d, y = mean(x1) - 0.5*sd(x1), labels = "Standard Deviation\nData Set 1", cex = 2, col = "red3", pos = 2)
text(x = 2.0-d, y = mean(x2) - 0.5*sd(x2), labels = "Standard Deviation\nData Set 2", cex = 2, col = "red3", pos = 2)
text(x = 2.0-d, y = mean(x2) + 0.5*sd(x2), labels = "Standard Deviation\nData Set 2", cex = 2, col = "red3", pos = 2)


dev.off()

sqrt(4)

x = c(15, 9, 3, 16, -14, -3, -7, -6, 3, 3, -15, 19, -7, 11, 6, 11, 16, 12, -1, -14, -14, 1, -1, 10, 11, 11, 13, 0, 0, -6, -3, -10, 3, 20, 6, 20, -6, 2, -8, 8, 16, 14, 5, 13, -15, -2, -8, 23, 2, 26)

# Calculate the Mean
N = length(x)

mu = sum(x)/N
mu

# Calculate the Standard Deviation
sigma = sqrt( sum( (x - mu)^2 )/N )
sigma

## To Do: Example Population Std Dev

x = c(33, 42, 49, 49, 53, 55, 55, 61, 63, 67, 68, 68, 69, 69, 72, 73, 74, 78, 80, 83, 88, 88, 88, 90, 92, 94, 94, 94, 94, 96, 100)

# Calculate the Sample Mean
n = length(x)

xbar = sum(x)/n
xbar

# Calculate the Sample Standard Deviation
s = sqrt( sum( (x - xbar)^2 ) / (n - 1) )
s

## To Do: Video Example Sample Std Dev

png("outlier_example.png", width = 1000, height = 1000)

library("beeswarm")
library("shape")

rangebrace = function(x, y0, y1, d, col){
    X = seq(x, x+d, length = 500)
    Ytop = (y1 - y0)/4 * ( -(2/d)^(1/3) * sign(X - (x + d/2))*abs(X - (x + d/2))^(1/3) + 1 ) + (y0 + y1)/2
    Ybot = (y1 - y0)/4 * ( (2/d)^(1/3) * sign(X - (x + d/2))*abs(X - (x + d/2))^(1/3) - 1 ) + (y0 + y1)/2
    lines(X, Ytop, lwd = 3, col = col)
    lines(X, Ybot, lwd = 3, col = col)
}

rangebar = function(x, y0, y1, d, col){
    segments(x-d, y0, x+d, y0, lwd = 3, col = col)
    segments(x, y0, x, y1, lwd = 3, col = col)
    segments(x-d, y1, x+d, y1, lwd = 3, col = col)
}

x = rnorm(100, sd = 1.5)

par(mar = c(2, 3.5, 2, 0))
beeswarm(x, pch = 21, col = "black", bg = "gray70", 
         cex = 2.5, cex.axis = 2, cex.main = 2, main = "Outliers", xaxt = "n", yaxt = "n", xlim = c(0.75, 1.5))
axis(2, at = seq(floor(min(x)), ceiling(max(x)), 1), cex.axis = 2, las = 2)

d = 0.1

segments(1.0 - d, mean(x) + 2*sd(x), 1.0 + d, mean(x) + 2*sd(x), lwd = 4, lty = "dotted", col = "blue3")
segments(1.0 - d, mean(x) + sd(x), 1.0 + d, mean(x) + sd(x), lwd = 4, lty = "dotted", col = "blue3")
segments(1.0 - d, mean(x), 1.0 + d, mean(x), lwd = 4, lty = "dotted", col = "blue3")
segments(1.0 - d, mean(x) - sd(x), 1.0 + d, mean(x) - sd(x), lwd = 4, lty = "dotted", col = "blue3")
segments(1.0 - d, mean(x) - 2*sd(x), 1.0 + d, mean(x) - 2*sd(x), lwd = 4, lty = "dotted", col = "blue3")

text(x = 1.0 - d, y = mean(x) + 2*sd(x), labels = "μ + 2σ", cex = 2, col = "blue3", pos = 2)
text(x = 1.0 - d, y = mean(x) + sd(x), labels = "μ + σ", cex = 2, col = "blue3", pos = 2)
text(x = 1.0 - d, y = mean(x), labels = "μ", cex = 2, col = "blue3", pos = 2)
text(x = 1.0 - d, y = mean(x) - sd(x), labels = "μ - σ", cex = 2, col = "blue3", pos = 2)
text(x = 1.0 - d, y = mean(x) - 2*sd(x), labels = "μ - 2σ", cex = 2, col = "blue3", pos = 2)

eps = 0.02
rangebar(1.0 + d, mean(x) + sd(x) + eps, mean(x) + 2*sd(x) - eps, d = 0.01, col = "red3")
rangebar(1.0 + d, mean(x) + eps, mean(x) + sd(x) - eps, d = 0.01, col = "red3")
rangebar(1.0 + d, mean(x) - eps, mean(x) - sd(x) + eps, d = 0.01, col = "red3")
rangebar(1.0 + d, mean(x) - sd(x) - eps, mean(x) - 2*sd(x) + eps, d = 0.01, col = "red3")

text(x = 1.0 + d, y = mean(x) + 3/2*sd(x), labels = "σ", cex = 2, col = "red3", pos = 4)
text(x = 1.0 + d, y = mean(x) + 1/2*sd(x), labels = "σ", cex = 2, col = "red3", pos = 4)
text(x = 1.0 + d, y = mean(x) - 1/2*sd(x), labels = "σ", cex = 2, col = "red3", pos = 4)
text(x = 1.0 + d, y = mean(x) - 3/2*sd(x), labels = "σ", cex = 2, col = "red3", pos = 4)

rangebrace(1.0 + 1.5*d, mean(x) + eps, mean(x) + 2*sd(x) - eps, d = 0.05, col = "red3")
rangebrace(1.0 + 1.5*d, mean(x) - eps, mean(x) - 2*sd(x) + eps, d = 0.05, col = "red3")

text(x = 1.0 + 1.5*d + 0.05, y = mean(x) + sd(x), labels = "Data values within\ntwo standard deviations\nabove the mean", cex = 2, col = "red3", pos = 4)
text(x = 1.0 + 1.5*d + 0.05, y = mean(x) - sd(x), labels = "Data values within\ntwo standard deviations\nbelow the mean", cex = 2, col = "red3", pos = 4)

delta = 0.02

start = 1/3*(mean(x) + 2*sd(x)) + 2/3*max(x)
outliers_above = x[x > mean(x) + 2*sd(x)]
for (outlier in outliers_above) {
    Arrows(1.2, start, 1 + delta, outlier, lwd = 3, arr.type = "triangle", arr.width = 0.3, col = "forestgreen")
}
if (length(outliers_above) > 0) {
    text(x = 1.2, y = start, labels = ifelse(length(outliers_above) > 1, "Outliers", "Outlier"), cex = 2, col = "forestgreen", pos = 4)
}

start = 1/3*(mean(x) - 2*sd(x)) + 2/3*min(x)
outliers_below = x[x < mean(x) - 2*sd(x)]
for (outlier in outliers_below) {
    Arrows(1.2, start, 1 + delta, outlier, lwd = 3, arr.type = "triangle", arr.width = 0.3, col = "forestgreen")
}
if (length(outliers_below) > 0) {
    text(x = 1.2, y = start, labels = ifelse(length(outliers_below) > 1, "Outliers", "Outlier"), cex = 2, col = "forestgreen", pos = 4)
}

dev.off()
