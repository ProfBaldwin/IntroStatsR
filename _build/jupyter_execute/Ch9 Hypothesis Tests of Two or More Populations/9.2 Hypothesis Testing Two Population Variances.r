#**ALT=Graphs of F-distributions with various numerator and denominator degrees of freedoms.**#
#**HIDE_INPUT**#
color <- c("red", "chocolate2", "lightcoral","forestgreen", "blue", "purple", "black")

df1list <- c(2, 5, 50)
df2list <- c(2, 5, 50)

x <- seq(0, 3, 0.01)
df <- c(1,1, 5,1, 1,5, 2,10, 10,2, 10,10, 100,100)

dfidx <- 1
y <- df(x, df[dfidx], df[dfidx + 1])
colidx <- 1
plot(x, y, type="l", col = color[colidx], main = "F-Distributions", xaxs = "i", yaxs = "i")
legtxt <- as.expression(bquote("df"[1]*"="*.(df[dfidx])*", df"[2]*"="*.(df[dfidx+1])))

while (colidx < length(color)) {
    dfidx <- dfidx + 2
    y <- df(x, df[dfidx], df[dfidx + 1])
    colidx <- colidx + 1
    lines(x, y, col = color[colidx])
    legtxt <- c(legtxt, as.expression(bquote("df"[1]*"="*.(df[dfidx])*", df"[2]*"="*.(df[dfidx+1]))))
}

legend(1.8, 3, legend=legtxt, col=color, lty=1)


xA = c(148.8, 141.4, 144.9, 140.2, 140.7, 139.6, 148.5, 136.9, 147.5, 148.5, 131.8, 127.9, 132.2, 138.6, 148.5, 141.1, 130.9, 139.2, 137.5, 151.9, 135, 142.6)
nA = length(xA)

xbarA = sum(xA)/nA

sA = sqrt( sum( (xA - xbarA)^2 )/(nA - 1) )
sA

xB = c(168.8, 186.4, 172.1, 180.1, 163.7, 185.2, 173.2, 174, 165.9, 169.2, 175.7, 181.3, 172.7, 172.1, 168.3, 171.8, 195, 186.4, 179, 168.3, 171.3, 182.9, 164.4, 169, 186.8, 178.3, 191.1)
nB = length(xB)

xbarB = sum(xB)/nB

sB = sqrt( sum( (xB - xbarB)^2 )/(nB - 1) )
sB

Fscore = sA^2/sB^2
Fscore

pf(q = Fscore, df1 = 21, df2 = 26, lower.tail = TRUE)

#**VID=5Us1OtgWjEA**#
