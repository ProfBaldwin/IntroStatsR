dbinom(x = 7, size = 20, prob = 0.41)

values = c(0, 1, 2, 3, 4)
dbinom(x = values, size = 20, prob = 0.41)

values = c(0, 1, 2, 3, 4)
probs = dbinom(x = values, size = 20, prob = 0.41)
sum(probs)

values = c(16, 17, 18, 19, 20)
probs = dbinom(x = values, size = 20, prob = 0.41)
sum(probs)

values = c(9, 10, 11, 12, 13, 14, 15, 16, 17)
probs = dbinom(x = values, size = 20, prob = 0.41)
sum(probs)

values = c(5, 6)
dbinom(x = values, size = 200, prob = 0.0128)

values = c(0, 1, 2, 3, 4, 5, 6, 7)
probs = dbinom(x = values, size = 200, prob = 0.0128)
sum(probs)
