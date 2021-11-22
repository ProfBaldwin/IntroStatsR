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

beats = c(70, 73, 94, 62, 81)

# Calculate the Sample Mean
n = length(beats)

xbar = sum(beats)/n
xbar

# Calculate the Sample Standard Deviation
s = sqrt( sum( (beats - xbar)^2 ) / (n - 1) )
s

beats - xbar

(beats - xbar)^2

sum( (beats - xbar)^2 )

sum( (beats - xbar)^2 )/(n - 1)

s = sqrt( sum( (beats - xbar)^2 )/ (n-1) )
s

scores = c(33, 42, 49, 49, 53, 55, 55, 61, 63, 67, 68, 68, 69, 69, 72, 73, 74, 78, 80, 83, 88, 88, 88, 90, 92, 94, 94, 94, 94, 96, 100)

# Calculate the Sample Mean
n = length(scores)

xbar = sum(scores)/n
xbar

# Calculate the Sample Standard Deviation
s = sqrt( sum( (scores - xbar)^2 ) / (n - 1) )
s

ages = c(9, 9.5, 9.5, 10, 10, 10, 10, 10.5, 10.5, 10.5, 10.5, 11, 11, 11, 11, 11, 11, 11.5, 11.5, 11.5)

# Calculate the Population Mean
N = length(ages)

mu = sum(ages)/N
mu


# Calculate the Population Standard Deviation
sigma = sqrt( sum( (ages - mu)^2 ) / N)
sigma

boxplot(ages)

#**VID=jP7PPzsJYkg**#
