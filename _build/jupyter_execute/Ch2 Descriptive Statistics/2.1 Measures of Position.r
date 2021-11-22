ages = c(18, 21, 22, 25, 26, 27, 29, 30, 31, 33, 36, 37, 41, 42, 47, 52, 55, 57, 58, 59, 62, 65, 67, 71, 72, 73, 74, 76, 77)

quantile(ages, probs = 0.73)

## To Do: Video Example Quantiles

library(beeswarm)

png("quartiles_and_quarters.png", width = 1000, height = 700)

rangebrace = function(x, y0, y1, d, col){
    X = seq(x, x+d, length = 500)
    Ytop = (y1 - y0)/4 * ( -(2/d)^(1/3) * sign(X - (x + d/2))*abs(X - (x + d/2))^(1/3) + 1 ) + (y0 + y1)/2
    Ybot = (y1 - y0)/4 * ( (2/d)^(1/3) * sign(X - (x + d/2))*abs(X - (x + d/2))^(1/3) - 1 ) + (y0 + y1)/2
    lines(X, Ytop, lwd = 3, col = col)
    lines(X, Ybot, lwd = 3, col = col)
}
    

#x = runif(100, max = 10)
#x = rnorm(100)
#x = rpois(100, 20)
x = rchisq(100, 10)

m = min(x)
q1 = quantile(x, probs = 0.25)
q2 = quantile(x, probs = 0.50)
q3 = quantile(x, probs = 0.75)
M = max(x)

color = "blue3"
delta = 0.2
left = 1 - delta
right = 1 + delta

par(mar = c(1, 3, 2, 1))

beeswarm(x, pch = 21, col = "black", bg = "gray70", cex = 2.5, xlim = c(left - 0.05, 1.45), cex.axis = 2, cex.main = 2, main = "Quartiles and Quarters for 100 Data Values", yaxt = "n")
#stripchart(x, method = "jitter", vertical = TRUE, pch = 21, col = "black", bg = "gray70", lwd = 3, cex = 2.5, xlim = c(left - 0.05, 1.45), cex.axis = 2, cex.main = 2, main = "Quartiles and Quarters for 100 Data Values", yaxt = "n")
axis(2, at = seq(0, 30, 2), cex.axis = 2, las = 2)

segments(left, m, right, m, lwd = 3, lty = "dotted", col = color)
segments(left, q1, right, q1, lwd = 3, lty = "dotted", col = color)
segments(left, q2, right, q2, lwd = 3, lty = "dotted", col = color)
segments(left, q3, right, q3, lwd = 3, lty = "dotted", col = color)
segments(left, M, right, M, lwd = 3, lty = "dotted", col = color)

text(x = left, y = m, labels = "Min", cex = 2, pos = 2, col = color)
text(x = left, y = q1, labels = "Q₁", cex = 2, pos = 2, col = color)
text(x = left, y = q2, labels = "Q₂", cex = 2, pos = 2, col = color)
text(x = left, y = q3, labels = "Q₃", cex = 2, pos = 2, col = color)
text(x = left, y = M, labels = "Max", cex = 2, pos = 2, col = color)

d = 0.015
rangebrace(right, m, q1, d, color)
rangebrace(right, q1, q2, d, color)
rangebrace(right, q2, q3, d, color)
rangebrace(right, q3, M, d, color)

text(x = right+d, y = (m + q1)/2, labels = "1st Quarter\nContains 25% of Data Values", cex = 2, pos = 4, col = color)
text(x = right+d, y = (q1 + q2)/2, labels = "2nd Quarter\nContains 25% of Data Values", cex = 2, pos = 4, col = color)
text(x = right+d, y = (q2 + q3)/2, labels = "3rd Quarter\nContains 25% of Data Values", cex = 2, pos = 4, col = color)
text(x = right+d, y = (q3 + M)/2, labels = "4th Quarter\nContains 25% of Data Values", cex = 2, pos = 4, col = color)

dev.off()


data = c(1, 11.5, 6, 7.2, 4, 8, 9, 10, 6.8, 8.3, 2, 2, 10, 1)

quantile(data, probs = 0.50)

prices = c(389950, 230500, 158000, 479000, 639000, 114950, 5500000, 387000, 659000, 529000, 575000, 488800, 1095000)

#First Quartile
quantile(prices, probs = 0.25)

#Median/Second Quartile
quantile(prices, probs = 0.50)

#Third Quartile
quantile(prices, probs = 0.75)

## To Do: Video Example of Quartiles and Quarters

data = c(1, 2, 2, 3, 5, 7, 9, 9, 11, 12, 15)

quantile(data, probs = 0.25)
quantile(data, probs = 0.50)
quantile(data, probs = 0.75)

data = c(1, 2, 2, 3, 5, 7, 9, 9, 11, 12, 15)

png("labeled_boxplot.png", width = 1000, height = 700)

rangebrace = function(x, y0, y1, d, col){
    X = seq(x, x+d, length = 500)
    Ytop = (y1 - y0)/4 * ( -(2/d)^(1/3) * sign(X - (x + d/2))*abs(X - (x + d/2))^(1/3) + 1 ) + (y0 + y1)/2
    Ybot = (y1 - y0)/4 * ( (2/d)^(1/3) * sign(X - (x + d/2))*abs(X - (x + d/2))^(1/3) - 1 ) + (y0 + y1)/2
    lines(X, Ytop, lwd = 3, col = col)
    lines(X, Ybot, lwd = 3, col = col)
}

color = "blue3"

m = min(data)
q1 = quantile(data, probs = 0.25)
q2 = quantile(data, probs = 0.50)
q3 = quantile(data, probs = 0.75)
M = max(data)

par(mar = c(1, 3, 2, 1))
boxplot(data, col = "gray70", yaxt = "n", main = "Labeled Box Plot", cex.main = 2.5, xlim = c(0.5, 2), lwd = 3)

axis(2, at = 1:15, cex.axis = 2, las = 2)

text(x = 0.9, y = m, labels = "Min", cex = 2, pos = 2, col = color)
text(x = 0.8, y = q1, labels = "Q₁", cex = 2, pos = 2, col = color)
text(x = 0.8, y = q2, labels = "Q₂", cex = 2, pos = 2, col = color)
text(x = 0.8, y = q3, labels = "Q₃", cex = 2, pos = 2, col = color)
text(x = 0.9, y = M, labels = "Max", cex = 2, pos = 2, col = color)

d = 0.03
right = 1.21
rangebrace(right, m, q1, d, color)
rangebrace(right, q1, q2, d, color)
rangebrace(right, q2, q3, d, color)
rangebrace(right, q3, M, d, color)

text(x = right+d, y = (m + q1)/2, labels = "1st Quarter\nContains 25% of Data Values", cex = 2, pos = 4, col = color)
text(x = right+d, y = (q1 + q2)/2, labels = "2nd Quarter\nContains 25% of Data Values", cex = 2, pos = 4, col = color)
text(x = right+d, y = (q2 + q3)/2, labels = "3rd Quarter\nContains 25% of Data Values", cex = 2, pos = 4, col = color)
text(x = right+d, y = (q3 + M)/2, labels = "4th Quarter\nContains 25% of Data Values", cex = 2, pos = 4, col = color)


dev.off()

png("outlier_boxplot.png", width = 500, height = 700)

data = rnorm(100)
par(mar = c(1, 1, 2, 1))
boxplot(data, col = "gray70", lwd = 3, cex = 3, yaxt = "n", main = "Box Plot with Extreme Value", cex.main = 2.5, xlim = c(0.75, 1.25))

dev.off()

heights = c(60, 60, 61, 62, 62, 63, 63, 64, 64, 64, 65, 65, 65, 65, 65, 65, 65, 65, 65, 66, 66, 67, 67, 68, 68, 69, 70, 70, 70, 70, 70, 71, 71, 72, 72, 73, 74, 74, 75, 77)

boxplot(heights)

png("boxplot_example.png", width = 700, height = 700)

heights = c(60, 60, 61, 62, 62, 63, 63, 64, 64, 64, 65, 65, 65, 65, 65, 65, 65, 65, 65, 66, 66, 67, 67, 68, 68, 69, 70, 70, 70, 70, 70, 71, 71, 72, 72, 73, 74, 74, 75, 77)

par(mar = c(1, 3, 1, 1))
boxplot(heights, col = "gray70", lwd = 3, cex.axis = 2)

dev.off()

# To Do: Video Example on Boxplots

data1 = c(64, 73, 101.3, 71.1, 94, 85.5, 99.9, 42, 92.4, 103, 54.7, 72.5, 101.9, 86.4, 47.2, 71.5, 71)
data2 = c(56.8, 71, 49, 69.4, 67.6, 71, 68.5, 61.1, 50.9, 71, 71, 71, 72, 72, 71, 64, 67.2, 52.5, 71, 69, 72, 71.3, 58.3, 71, 71)

boxplot(data1, data2)

png("side_by_side_boxplots.png", width = 1000, height = 1000)

data1 = c(64, 73, 101.3, 71.1, 94, 85.5, 99.9, 42, 92.4, 103, 54.7, 72.5, 101.9, 86.4, 47.2, 71.5, 71)
data2 = c(56.8, 71, 49, 69.4, 67.6, 71, 68.5, 61.1, 50.9, 71, 71, 71, 72, 72, 71, 64, 67.2, 52.5, 71, 69, 72, 71.3, 58.3, 71, 71)

par(mar = c(1, 3, 1, 1))
boxplot(data1, data2, col = "gray70", cex = 3, lwd = 3, cex.axis = 2)

dev.off()
