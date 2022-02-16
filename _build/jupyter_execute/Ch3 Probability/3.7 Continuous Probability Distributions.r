png("pdf_example.png", width = 1000, height = 500)

library("shape")

par(mar = c(2, 3, 3, 2.5))

x = seq(0, 60, 0.01)
y = dchisq(x, df=8)


plot(x, y, 
     type="l", col="black", 
     main="Example of a Continuous Probability Density Function", 
     cex.main = 2.5, cex.lab = 2.5, bty = "n",
     xaxs = "i", xaxt = "n", xlim = c(0, 30), xlab = "",
     yaxs = "i",  yaxt = "n", ylim = c(0, 0.15), ylab = "")

polygon(x, y, col = "gray90")

x = c(4, seq(4, 8, 0.01), 8)
y = c(0, dchisq(seq(4, 8, 0.01), df=8), 0)
polygon(x, y, col = "lightsteelblue")

Arrows(6, 0.125, 6, 0.105, lwd = 3, arr.type = "triangle", arr.width = 0.3, col = "blue3")
text(6, 0.125, labels = "P(4 < X < 8)", cex = 2, col = "blue3", pos = 3)

x = c(14, seq(14, 18, 0.01), 18)
y = c(0, dchisq(seq(14, 18, 0.01), df=8), 0)
polygon(x, y, col = "lightsteelblue")

Arrows(16, 0.03, 16, 0.01, lwd = 3, arr.type = "triangle", arr.width = 0.3, col = "blue3")
text(16, 0.03, labels = "P(14 < X < 18)", cex = 2, col = "blue3", pos = 3)

axis(1, at = seq(0, 30, 2), cex.axis = 2)
axis(2, at = seq(0.0, 0.15, 0.05), cex.axis = 2)

text(30.3, 0, labels = "x", cex = 2.5, pos = 4, xpd = TRUE)
text(0, 0.155, labels = "y", cex = 2.5, pos = 3, xpd = TRUE)

dev.off()

png("pdf_rect1.png", width = 1000, height = 500)

par(mar = c(2, 1, 3, 2))

x = c(-1, 4)
y = c(0.2, 0.2)

plot(x, y, 
     type="l", col="black", 
     main="", 
     cex.main = 2.5, cex.lab = 2.5, bty = "n",
     xaxs = "i", xaxt = "n", xlim = c(-2, 5), xlab = "",
     yaxs = "i",  yaxt = "n", ylim = c(0, 1), ylab = "")

polyx = c(-1, x, 4)
polyy = c(0, y, 0)
polygon(polyx, polyy, col = "gray90", border = NA)

lines(x,  y)

axis(1, pos=0, at = seq(-2, 5, 1), cex.axis = 2)
axis(2, pos=0, at = seq(0, 1, 0.1), cex.axis = 2)

text(5.03, 0, labels = "x", cex = 2.5, pos = 4, xpd = TRUE)
text(0, 1.03, labels = "y", cex = 2.5, pos = 3, xpd = TRUE)

dev.off()

png("pdf_tri1.png", width = 1000, height = 500)

par(mar = c(2, 1, 3, 2))

x = c(-4, 2)
y = c(0.4, -0.2)
intercept = -y[1] * (x[2] - x[1])/(y[2] - y[1]) + x[1]

plot(x, y, 
     type="l", col="black", 
     main="", 
     cex.main = 2.5, cex.lab = 2.5, bty = "n",
     xaxs = "i", xaxt = "n", xlim = c(-5, 3), xlab = "",
     yaxs = "i",  yaxt = "n", ylim = c(-0.4, 0.6), ylab = "")

polyx = c(-4, -4, 0)
polyy = c(0, 0.4, 0)
polygon(polyx, polyy, col = "gray90", border = NA)

polyx = c(0, 2, 2)
polyy = c(0, -0.2, 0)
polygon(polyx, polyy, col = "gray90", border = NA)

lines(x,  y)

axis(1, pos=0, at = seq(-5, 3, 1), cex.axis = 2)
axis(2, pos=0, at = seq(-0.4, 0.6, 0.1), cex.axis = 2)

text(3.03, 0, labels = "x", cex = 2.5, pos = 4, xpd = TRUE)
text(0, 0.63, labels = "y", cex = 2.5, pos = 3, xpd = TRUE)

dev.off()

png("pdf_circle.png", width = 1000, height = 500)

par(mar = c(2, 1, 3, 1))

x = seq(-2, 2, 0.01)
y = sqrt(4 - x^2) 

plot(x, y, 
     type="l", col="black", 
     main="", 
     cex.main = 2.5, cex.lab = 2.5, bty = "n", asp = 1,
     xaxs = "i", xaxt = "n", xlim = c(-3, 3), xlab = "",
     yaxs = "i",  yaxt = "n", ylim = c(0, 3), ylab = "")

polyx = c(-2, x, 2)
polyy = c(0, sqrt(4 - x^2), 0)
polygon(polyx, polyy, col = "gray90")

axis(1, pos=0, at = seq(-3, 3, 1), cex.axis = 2)
axis(2, pos=0, at = seq(0, 3, 1), cex.axis = 2)

text(3.03, 0, labels = "x", cex = 2.5, pos = 4, xpd = TRUE)
text(0, 3.07, labels = "y", cex = 2.5, pos = 3, xpd = TRUE)

dev.off()

png("pdf_rect2.png", width = 1000, height = 500)

par(mar = c(2, 3, 3, 2))

x = c(1, 3)
y = c(0.5, 0.5)

plot(x, y, 
     type="l", col="black", 
     main="", 
     cex.main = 2.5, cex.lab = 2.5, bty = "n",
     xaxs = "i", xaxt = "n", xlim = c(0, 4), xlab = "",
     yaxs = "i",  yaxt = "n", ylim = c(0, 1), ylab = "")

polyx = c(1, x, 3)
polyy = c(0, y, 0)
polygon(polyx, polyy, col = "gray90", border = NA)

lines(x,  y)

axis(1, pos=0, at = seq(0, 4, 0.5), cex.axis = 2)
axis(2, pos=0, at = seq(0, 1, 0.1), cex.axis = 2)

text(4.03, 0, labels = "x", cex = 2.5, pos = 4, xpd = TRUE)
text(0, 1.03, labels = "y", cex = 2.5, pos = 3, xpd = TRUE)

dev.off()

png("pdf_rect2_area1.png", width = 1000, height = 500)

par(mar = c(2, 3, 3, 2))

x = c(1, 3)
y = c(0.5, 0.5)

plot(x, y, 
     type="l", col="black", 
     main="", 
     cex.main = 2.5, cex.lab = 2.5, bty = "n",
     xaxs = "i", xaxt = "n", xlim = c(0, 4), xlab = "",
     yaxs = "i",  yaxt = "n", ylim = c(0, 1), ylab = "")

polyx = c(1, x, 3)
polyy = c(0, y, 0)
polygon(polyx, polyy, col = "gray90", border = NA)

polyx = c(1.5, 1.5, 3, 3)
polyy = c(0, 0.5, 0.5, 0)
polygon(polyx, polyy, col = "lightsteelblue")

lines(x,  y)

axis(1, pos=0, at = seq(0, 4, 0.5), cex.axis = 2)
axis(2, pos=0, at = seq(0, 1, 0.1), cex.axis = 2)

text(4.03, 0, labels = "x", cex = 2.5, pos = 4, xpd = TRUE)
text(0, 1.03, labels = "y", cex = 2.5, pos = 3, xpd = TRUE)

dev.off()

png("pdf_rect2_area2.png", width = 1000, height = 500)

par(mar = c(2, 3, 3, 2))

x = c(1, 3)
y = c(0.5, 0.5)

plot(x, y, 
     type="l", col="black", 
     main="", 
     cex.main = 2.5, cex.lab = 2.5, bty = "n",
     xaxs = "i", xaxt = "n", xlim = c(0, 4), xlab = "",
     yaxs = "i",  yaxt = "n", ylim = c(0, 1), ylab = "")

polyx = c(1, x, 3)
polyy = c(0, y, 0)
polygon(polyx, polyy, col = "gray90", border = NA)

polyx = c(2, 2, 2.5, 2.5)
polyy = c(0, 0.5, 0.5, 0)
polygon(polyx, polyy, col = "lightsteelblue")

lines(x,  y)

axis(1, pos=0, at = seq(0, 4, 0.5), cex.axis = 2)
axis(2, pos=0, at = seq(0, 1, 0.1), cex.axis = 2)

text(4.03, 0, labels = "x", cex = 2.5, pos = 4, xpd = TRUE)
text(0, 1.03, labels = "y", cex = 2.5, pos = 3, xpd = TRUE)

dev.off()

png("pdf_tri2.png", width = 1000, height = 500)

par(mar = c(2, 3, 3, 2))

x = c(-3, 1)
y = c(0, 0.5)

plot(x, y, 
     type="l", col="black", 
     main="", 
     cex.main = 2.5, cex.lab = 2.5, bty = "n",
     xaxs = "i", xaxt = "n", xlim = c(-4, 2), xlab = "",
     yaxs = "i",  yaxt = "n", ylim = c(0, 1), ylab = "")

polyx = c(-3, x, 1)
polyy = c(0, y, 0)
polygon(polyx, polyy, col = "gray90", border = NA)

lines(x,  y)

axis(1, pos=0, at = seq(-4, 2, 0.5), cex.axis = 2)
axis(2, pos=0, at = seq(0, 1, 0.1), cex.axis = 2)

text(2.03, 0, labels = "x", cex = 2.5, pos = 4, xpd = TRUE)
text(0, 1.03, labels = "y", cex = 2.5, pos = 3, xpd = TRUE)

dev.off()

png("pdf_tri2_area1.png", width = 1000, height = 500)

par(mar = c(2, 3, 3, 2))

x = c(-3, 1)
y = c(0, 0.5)

plot(x, y, 
     type="l", col="black", 
     main="", 
     cex.main = 2.5, cex.lab = 2.5, bty = "n",
     xaxs = "i", xaxt = "n", xlim = c(-4, 2), xlab = "",
     yaxs = "i",  yaxt = "n", ylim = c(0, 1), ylab = "")

polyx = c(-3, x, 1)
polyy = c(0, y, 0)
polygon(polyx, polyy, col = "gray90", border = NA)

polyx = c(-3, -3, -1.5, -1.5)
polyy = c(0, 0, 0.1875, 0)
polygon(polyx, polyy, col = "lightsteelblue")

lines(x,  y)

axis(1, pos=0, at = seq(-4, 2, 0.5), cex.axis = 2)
axis(2, pos=0, at = seq(0, 1, 0.1), cex.axis = 2)

text(2.03, 0, labels = "x", cex = 2.5, pos = 4, xpd = TRUE)
text(0, 1.03, labels = "y", cex = 2.5, pos = 3, xpd = TRUE)

dev.off()

png("pdf_tri2_area2.png", width = 1000, height = 500)

par(mar = c(2, 3, 3, 2))

x = c(-3, 1)
y = c(0, 0.5)

plot(x, y, 
     type="l", col="black", 
     main="", 
     cex.main = 2.5, cex.lab = 2.5, bty = "n",
     xaxs = "i", xaxt = "n", xlim = c(-4, 2), xlab = "",
     yaxs = "i",  yaxt = "n", ylim = c(0, 1), ylab = "")

polyx = c(-3, x, 1)
polyy = c(0, y, 0)
polygon(polyx, polyy, col = "gray90", border = NA)

polyx = c(-1.5, -1.5, 1, 1)
polyy = c(0, 0.1875, 0.5, 0)
polygon(polyx, polyy, col = "lightsteelblue")

lines(x,  y)

axis(1, pos=0, at = seq(-4, 2, 0.5), cex.axis = 2)
axis(2, pos=0, at = seq(0, 1, 0.1), cex.axis = 2)

text(2.03, 0, labels = "x", cex = 2.5, pos = 4, xpd = TRUE)
text(0, 1.03, labels = "y", cex = 2.5, pos = 3, xpd = TRUE)

dev.off()
