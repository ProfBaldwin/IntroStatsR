x = c(1, 2, 3, 4, 5, 6)
Px = c(1/6, 1/6, 1/6, 1/6, 1/6, 1/6)

mu = sum(x * Px)
mu

x = c(0, 1, 2)
Px = c(0.2, 0.5, 0.3)

mu = sum(x*Px)
mu

x = c(100000, -2)
Px = c(0.00001, 0.99999)

mu = sum(x*Px)
mu

x = c(1, 2, 3)
Px = c(0.40, 0.55, 0.05)

mu = sum(x*Px)
mu

sigma = sqrt( sum( (x - mu)^2 * Px ) )
sigma

x = c(0, 1, 2, 3, 4, 5)
Px = c(4/50, 8/50, 16/50, 14/50, 6/50, 2/50)

mu = sum(x*Px)
mu

sigma = sqrt( sum( (x - mu)^2 * Px ) )
sigma
