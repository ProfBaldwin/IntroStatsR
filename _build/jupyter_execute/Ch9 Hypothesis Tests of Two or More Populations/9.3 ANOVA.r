#**ALT=Two groups of box plots. Group A has little variation between box plots; group B has significant variation between box plots.**#
#**HIDE_INPUT**#
library(repr)
options(repr.plot.width = 7, repr.plot.height=4)
par(mfrow = c(1, 2))

n <- 500

A <- rnorm(n, 0, 5)
B <- rnorm(n, 0, 5)
C <- rnorm(n, 0, 5)
D <- rnorm(n, 0, 5)
boxplot(A, B, C, D, col="#20639b", axes=FALSE, outline=FALSE, main= "A")

A <- rnorm(n, 4, 5)
B <- rnorm(n, 0, 5)
C <- rnorm(n, 11, 5)
D <- rnorm(n, -2, 5)
boxplot(A, B, C, D, col = "tomato2", axes = FALSE, outline=FALSE, main = "B")

x1 = c(18, 21, 20, 20, 17)
n1 = length(x1)

xbar1 = sum(x1)/n1
xbar1

x2 = c(22, 19, 18, 21, 19, 16, 18)
n2 = length(x2)

xbar2 = sum(x2)/n2
xbar2

x3 = c(20, 19, 17, 21)
n3 = length(x3)

xbar3 = sum(x3)/n3
xbar3

grandx = (sum(x1) + sum(x2) + sum(x3))/(n1 + n2 + n3)
grandx

x1 = c(82, 104, 119, 56, 85, 94, 81, 106, 82, 92, 109, 71, 95, 86, 34, 89, 80, 53, 78, 99, 57, 87, 69, 98, 75, 88, 59, 104, 65, 66, 74, 73, 73, 106, 91, 89, 85, 84, 53, 81)
x2 = c(80, 52, 72, 72, 43, 61, 66, 58, 118, 73, 76, 64, 81, 65, 63, 78, 72, 83, 104, 54, 69, 100, 63, 71, 38, 73, 92, 70, 86, 51, 66, 89, 74, 85)
x3 = c(75, 87, 79, 96, 72, 75, 93, 84, 80, 95, 72, 56, 83, 98, 96, 54, 106, 66, 120, 77, 88, 90, 75, 98, 113, 55, 44)
x4 = c(92, 68, 74, 82, 94, 44, 63, 61, 99, 71, 85, 42, 90, 94, 48, 97, 89, 65, 81, 45, 93, 81, 73, 69, 93, 75, 76, 61, 75, 102)

n1 = length(x1)
n2 = length(x2)
n3 = length(x3)
n4 = length(x4)

n1
n2
n3
n4

xbar1 = sum(x1)/n1
xbar1

xbar2 = sum(x2)/n2
xbar2

xbar3 = sum(x3)/n3
xbar3

xbar4 = sum(x4)/n4
xbar4

grandx = (sum(x1) + sum(x2) + sum(x3) + sum(x4))/(n1 + n2 + n3 + n4)
grandx

SS_between = n1*(xbar1 - grandx)^2 + n2*(xbar2 - grandx)^2 + n3*(xbar3 - grandx)^2 + n4*(xbar4 - grandx)^2
SS_between

df_between = 3

MS_between = SS_between/df_between
MS_between

SS_within = sum( (x1 - xbar1)^2 ) + sum( (x2 - xbar2)^2 ) + sum( (x3 - xbar3)^2 ) + sum( (x4 - xbar4)^2 )
SS_within

df_within = 127

MS_within = SS_within/df_within
MS_within

F = MS_between/MS_within
F

pf(q = F, df1 = df_between, df2 = df_within, lower.tail = FALSE)

#**VID=0IEzJnLrMEo**#
