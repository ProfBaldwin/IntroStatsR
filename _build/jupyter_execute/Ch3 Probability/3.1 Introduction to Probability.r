## To Do: Video Example Set Notation

png("observed_coin_flips.png", width = 1000, height = 500)

n = 1000
N = 1
color = c("blue3", "red3", "forestgreen")

par(mar = c(5, 6, 2, 0))
plot(0, type = "n", ylim = c(0, 1), xlim = c(1, n), yaxt = "n", xaxt = "n", xlab = "", ylab = "")
title(xlab = "Number of Coin Tosses", line = 4, cex.lab = 2.5)
title(ylab = "Proportion of Heads", line = 4, cex.lab = 2.5)
title(main = "Proportion of Heads Observed in 1,000 Coin Tosses", cex.main = 2.5)
axis(1, at = seq(0, n, n/10), cex.axis = 2)
axis(2, at = c(0, 0.5, 1), cex.axis = 2, las = 2)
      
abline(h = 0.5)

for (j in 1:N){
    x = sample(0:1, size = n, replace = TRUE)
    p = numeric(n)
    for (k in 1:n) {
        p[k] = sum(x[1:k])/k
    }
    lines(p, col = color[j], lwd = 3)
}

dev.off()

## To Do: Video Example Equally Likely Probability
