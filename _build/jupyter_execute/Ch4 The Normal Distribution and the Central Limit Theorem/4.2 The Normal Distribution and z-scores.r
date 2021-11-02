#**VID=9u3Ja0rD70Y**#

pnorm(q = 0.5, lower.tail = FALSE)

pnorm(q = -2.5, lower.tail = TRUE)

pnorm(q = 0.5, lower.tail = TRUE) - pnorm(q = -2.5, lower.tail = TRUE)

#**VID=zCDeQAE8PSY**#

qnorm(p = 0.80, lower.tail = TRUE)

qnorm(p = 0.10, lower.tail = FALSE)

#**VID=GFLbgN6df0Q**#

#**ALT=A graphical representation of the empirical rule.**#
#**HIDE_INPUT**#
library(repr)
options(repr.plot.width = 7, repr.plot.height=5.5)
cols <- c("#F5793A", "#A95AA1", "#85C079", "white")

# Sequence between -4 and 4 with 0.1 steps
x <- seq(-4, 4, 0.1)

# Plot an empty chart with tight axis boundaries, and axis lines on bottom and left
plot(x, type="n", xlim=c(-4, 4), ylim=c(-0.25, 0.39),
     bty="l", xaxt="n", xlab="", ylab="", axes=FALSE)

# Function to plot each coloured portion of the curve, between "a" and "b" as a
# polygon; the function "dnorm" is the normal probability density function
polysection <- function(a, b, col, n=11){
    dx <- seq(a, b, length.out=n)
    polygon(c(a, dx, b), c(0, dnorm(dx), 0), col=col, border=NA)
    # draw a white vertical line on "inside" side to separate each section
    segments(a, 0, a, dnorm(a), col="black")
}

# Build the four left and right portions of this bell curve
for(i in 0:3){
    polysection(     i, i + 1, col=cols[i + 1])  # Right side of 0
    polysection(-i - 1,    -i, col=cols[i + 1])  # Left right of 0
}

# Black outline of bell curve
lines(x, dnorm(x))

# Bottom axis values, where sigma represents standard deviation and mu is the mean
axis(1, at=c(-4, 4), labels=c("",""), lwd.ticks=0, pos=0)
axis(1, at=-3:3, labels=expression(mu - 3 * sigma, mu - 2 * sigma, mu - sigma, mu,
                                   mu + sigma, mu + 2 * sigma, mu + 3 * sigma), pos = 0)

# Percent Densities for regions 1, 2, and 3 standard deviations from the mean
lines(c(-1, -1, 1, 1), c(-0.1, -0.12, -0.12, -0.1))
text(0, -0.135, "68%")

lines(c(-2, -2, 2, 2), c(-0.1, -0.17, -0.17, -0.1))
text(0, -0.185, "95%")

lines(c(-3, -3, 3, 3), c(-0.1, -0.22, -0.22, -0.1))
text(0, -0.235, "99.7%")

# Add percent densities to each division (rounded to 1 decimal place), between x and x+1
text(c((0:3) + 0.5, (0:-3) - 0.5), c(0.06,0.06, 0.06,0.02),
     c("35%", "16.5%", "2.35%", ""),
     col="black")#c("white", "white", "black", "black"))
segments(c(-2.5, 2.5), dnorm(2.5),
         c(-2.5, 2.5), 0.04)

#**VID=1tTwrjPqIsk**#
