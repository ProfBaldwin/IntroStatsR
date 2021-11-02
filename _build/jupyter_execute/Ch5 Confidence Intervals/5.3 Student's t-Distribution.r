#**ALT=Graphs of the standard normal distribution and Student's $t$-distributions with different degrees of freedom.**#
#**HIDE_INPUT**#

x <- seq(-3, 3, 0.01)
y <- dnorm(x)

plot(x, y, type="l", col="black")

y <- dt(x, df = 12)

lines(x, y, col="red")

y <- dt(x, df = 3)

lines(x, y, col="blue")

legend(0.7, 0.4, legend=c("Standard Normal", "Student's t, df=12", "Student's t, df=3"), col=c("black", "red", "blue"), lty=1)



pt(q = -0.5, df = 11, lower.tail = TRUE)

pt(q = 0.3, df = 11, lower.tail = FALSE)

pt(q = 1.2, df = 11, lower.tail = TRUE) - pt(q = -1.0, df = 11, lower.tail = TRUE)

#**VID=XjtEoFnKkYQ**#

qt(p = 0.12, df = 22, lower.tail = TRUE)

qt(p = 0.34, df = 22, lower.tail = FALSE)

qt(p = 0.05, df = 22, lower.tail = FALSE)

#**VID=7JUP9kansiw**#
