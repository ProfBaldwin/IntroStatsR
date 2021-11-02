#**ALT=Graph of normal density function with mean=10, standard deviation=3. The central region is shaded and labeled 90%. Each tail is labeled 5%.**#
#**HIDE_INPUT**#
library(repr)
options(repr.plot.width = 7, repr.plot.height=4)

x <- seq(0, 20, 0.01)
y <- dnorm(x, mean = 10, sd = 3)
plot(x, y, type="l", xaxt="n", yaxt="n")

L = 10 - 4.935
U = 10 + 4.935
polyx <- c(L, seq(L, U, 0.01), U)
polyy <- c(0, dnorm(seq(L, U, 0.01), mean=10, sd=3), 0)
polygon(polyx, polyy, col="lightsteelblue")

text(4, 0.007, "5%")
text(10, 0.06, "90%")
text(16, 0.007, "5%")

qnorm(p = 0.05, lower.tail = FALSE)

x = c(333, 248, 303, 248, 153, 168, 280, 256, 195, 234, 366, 250, 325, 266, 164, 253, 262, 343, 244, 425, 345, 343, 277, 215, 226, 254, 289, 296, 268, 195, 268, 202, 249, 256, 284, 257, 205, 215, 251, 257, 144, 323, 238, 257, 218)
n = length(x)

xbar = sum(x)/n
xbar

qnorm(p = 0.025, lower.tail = FALSE)

x = c(3.55, 3.51, 3.27, 4.30, 3.17, 3.61, 3.24, 3.74, 3.40, 3.91, 3.00, 1.88, 2.54, 3.15, 4.35, 2.62, 4.01, 3.69, 3.82, 3.18, 2.60, 3.49, 3.05, 2.91, 3.28, 2.97, 3.09, 3.49, 3.49, 3.05)
n = length(x)

xbar = sum(x)/n
xbar

qnorm(p = 0.01, lower.tail = FALSE)

#**VID=BcHJBGISw3k**#
