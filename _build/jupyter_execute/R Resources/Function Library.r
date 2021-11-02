#**ALT=Bar chart of three bars with heights, from left-to-right, of 2, 4, and 6.**#
barplot(height = c(2, 4, 6), names = c("First Bar", "The Second Bar", "And The Third"))

#**ALT=A box plot**# 
boxplot(x = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10))

cor(x = c(1, 2, 3, 4), y = c(4, 1, 3, 2))

dbinom(x = 7, size = 10, prob = 0.35)

dbinom(x = c(2, 4, 6), size = 12, prob = 0.67)

#**ALT=A histogram.**#
hist(x = c(1.2, 2.2, 2.4, 3.2, 3.4, 3.6, 4.2, 4.4, 4.6, 4.8, 5.2, 5.4, 5.6))

length(x = c(2, 4, 6))

x <- c(1, 2, 3, 4)
y <- c(4, 3, 1, 2)
lm(y ~ x)

median(x = c(7, 11, 2, 19, 45, 12, 31))

pchisq(q = 10, df = 8, lower.tail = TRUE)

pchisq(q = 20, df = 24, lower.tail = FALSE)

pf(q = 0.5, df1 = 5, df2 = 1, lower.tail = TRUE)

pf(q = 1.0, df1 = 10, df2 = 10, lower.tail = FALSE)

#**ALT=A pie chart with a small piece, a medium piece, and a very big piece.**#
pie(x = c(30, 60, 150), labels = c("Small piece", "Medium Piece", "Very big piece"))

plot(x = c(2, 4, 6, 8), y = c(4, 1, 3, 2))

pnorm(q = 0, lower.tail = TRUE)

pnorm(q = -1.475, lower.tail = FALSE)

pt(q = 1.5, df = 6, lower.tail = TRUE)

pt(q = -0.5, df = 12, lower.tail = FALSE)

qnorm(p = 0.5, lower.tail = TRUE)

qnorm(p = 0.9299, lower.tail = FALSE)

qt(p = 0.8, df = 3, lower.tail = TRUE)

qt(p = 0.6, df = 7, lower.tail = FALSE)

quantile(x = c(1, 2, 3, 4), probs = 0.50)

quantile(x = c(1, 2, 3, 4), probs = c(0.10, 0.90))

sample( x = c(1, 2, 3, 4, 5, 6, 7, 8, 9), size = 3 )

sqrt(x = 4)

sqrt(x = c(1, 4, 9, 20))

sum(x = c(1, 2, 3, 4))
