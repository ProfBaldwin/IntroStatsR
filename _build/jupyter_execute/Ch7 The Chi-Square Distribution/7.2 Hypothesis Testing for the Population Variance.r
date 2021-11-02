x = c(2002.08, 1999.25, 2002, 1996.51, 1998.99, 2000.06, 1999.73, 2001.16, 2001.19, 2002.14, 2000.21, 2002.15, 2000.06)
n = length(x)

xbar = sum(x)/n
xbar

s = sqrt(sum( (x - xbar)^2 )/(n - 1))
s

sigma = 1.5
chisq = (n - 1)*s^2 / sigma^2
chisq

pvalue = pchisq(q = 14.1443, df = 12, lower.tail = FALSE)
pvalue

x = c(108, 95, 98, 101, 118, 105, 102, 80, 112, 113, 88, 101, 93, 98, 104, 99, 87, 90)
n = length(x)

xbar = sum(x)/n
xbar

s = sqrt( sum( (x - xbar)^2 )/(n - 1) )
s

sigma = 15
chisq = (n - 1)*s^2 / sigma^2
chisq

half_pvalue = pchisq(7.2909, df = 17, lower.tail = TRUE)
half_pvalue

pvalue = 2*half_pvalue
pvalue

#**VID=qWQ39iWrU-I**#
