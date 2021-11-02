#**ALT=Graphs of chi-square distributions with df=2, df=8, and df=24.**#
#**HIDE_INPUT**#

x <- seq(0, 60, 0.01)
y <- dchisq(x, df=2)
plot(x, y, type="l", col="black", main="Chi-Square Distributions", lwd=1, xaxs = "i", yaxs = "i")

y <- dchisq(x, df=8)
lines(x, y, col="red")

y <- dchisq(x, df=24)
lines(x, y, col="blue")

legend(45, 0.475, legend=c("df=2", "df=8", "df=24"), col=c("black", "red", "blue"), lty=1)

pchisq(q = 2, df = 4, lower.tail = TRUE)

pchisq(q = 6, df = 4, lower.tail = FALSE)

pchisq(q = 5, df = 4, lower.tail = TRUE) - pchisq(q = 3, df = 4, lower.tail = TRUE)

#**VID=DFXcInJfeKc**#
