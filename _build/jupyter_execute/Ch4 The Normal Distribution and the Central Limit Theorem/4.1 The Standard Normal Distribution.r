#**ALT=Graph of f(x) = 1/2.**#
#**HIDE_INPUT**#
library(repr)
options(repr.plot.width = 7, repr.plot.height=4)

n = 2
x = c(0, n, n)
y = c(1/n, 1/n, 0)

plot(x, y, type="l", ylim=c(0.18, n), xlim=c(0.18, n))

#**ALT=Graph of f(x) = 1/2 with area under the function between 0 and 0.7 shaded.**#
#**HIDE_INPUT**#

library(repr)
options(repr.plot.width = 7, repr.plot.height=4)

n = 2
x = c(0, n, n)
y = c(1/n, 1/n, 0)

plot(x, y, type="l", ylim=c(0.18, n), xlim=c(0.18, n))

x = c(0, 0, 0.7, 0.7)
y = c(0, 0.5, 0.5, 0)
polygon(x, y, col="lightsteelblue")

#**ALT=Graph of f(x) = 1/2 with area under the function between 1 and 1.82 shaded.**#
#**HIDE_INPUT**#
library(repr)
options(repr.plot.width = 7, repr.plot.height=4)

n = 2
x = c(0, n, n)
y = c(1/n, 1/n, 0)

plot(x, y, type="l", ylim=c(0.18, n), xlim=c(0.18, n))

x = c(1, 1, 1.82, 1.82)
y = c(0, 0.5, 0.5, 0)
polygon(x, y, col="lightsteelblue")

#**VID=cbUNnCt8oU8**#

#**ALT=Graph of standard normal density function.**#
#**HIDE_INPUT**#
library(repr)
options(repr.plot.width = 7, repr.plot.height=4)

z = seq(-3, 3, 0.01)
y = dnorm(z)
plot(z, y, type="l", ylab = "", axes = FALSE)
axis(1, pos=0)
axis(2, pos=-3)

#**ALT=Graph of standard normal density function with the area under the curve and to the left of z = 1 shaded.**#
#**HIDE_INPUT**#
library(repr)
options(repr.plot.width = 7, repr.plot.height=4)

z = seq(-3, 3, 0.01)
y = dnorm(z)
plot(z, y, type="l", ylab = "", axes = FALSE)
axis(1, pos=0)

polyz = c(-3, seq(-3, 1, 0.01), 1)
polyy = c(0, dnorm(seq(-3, 1, 0.01)), 0)
polygon(polyz, polyy, col="lightsteelblue")

pnorm(q = 1.0, lower.tail = TRUE)

#**ALT=Graph of standard normal density function with the area under the curve and to the right of z = 1 shaded.**#
#**HIDE_INPUT**#
library(repr)
options(repr.plot.width = 7, repr.plot.height=4)

z = seq(-3, 3, 0.01)
y = dnorm(z)
plot(z, y, type="l", ylab = "", axes = FALSE)
axis(1, pos=0)

polyz = c(1, seq(1, 3, 0.01), 3)
polyy = c(0, dnorm(seq(1, 3, 0.01)), 0)
polygon(polyz, polyy, col="lightsteelblue")

pnorm(q = 1.0, lower.tail = FALSE)

#**ALT=Graph of standard normal density function with the area under the curve between z=0 and z=1.5.**#
#**HIDE_INPUT**#
library(repr)
options(repr.plot.width = 7, repr.plot.height=4)

z = seq(-3, 3, 0.01)
y = dnorm(z)
plot(z, y, type="l", ylab = "", axes = FALSE)
axis(1, pos = 0)

polyz = c(-1, seq(-1, 1.5, 0.01), 1.5)
polyy = c(0, dnorm(seq(-1, 1.5, 0.01)), 0)
polygon(polyz, polyy, col="lightsteelblue")

#**ALT=Graph of standard normal density function with the area under the curve between z=0 and z=1.5.**#
#**HIDE_INPUT**#
library(repr)
options(repr.plot.width = 7, repr.plot.height=4)

z = seq(-3, 3, 0.01)
y = dnorm(z)
plot(z, y, type="l", ylab = "", axes = FALSE)
axis(1, pos = 0)

polyz = c(-3, seq(-3, 1.5, 0.01), 1.5)
polyy = c(0, dnorm(seq(-3, 1.5, 0.01)), 0)
polygon(polyz, polyy, col="dodgerblue")

polyz = c(-3, seq(-3, -1, 0.01), -1)
polyy = c(0, dnorm(seq(-3, -1, 0.01)), 0)
polygon(polyz, polyy, col="red", density=15)

pnorm(q = 1.5, lower.tail = TRUE) - pnorm(q = -1, lower.tail = TRUE)

#**VID=JvVnFEffnEs**#

#**VID=N1zc3LPdQiQ**#

qnorm(p = 0.75, lower.tail = TRUE)

#**VID=lvUd-o49xd0**#
