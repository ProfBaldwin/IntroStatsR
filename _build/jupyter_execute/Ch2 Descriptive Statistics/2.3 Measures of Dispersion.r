beats = c(70, 73, 94, 62, 81)

# Calculate the Sample Mean
n = length(beats)

xbar = sum(beats)/n
xbar

# Calculate the Sample Standard Deviation
s = sqrt( sum( (beats - xbar)^2 ) / (n - 1) )
s

beats - xbar

(beats - xbar)^2

sum( (beats - xbar)^2 )

sum( (beats - xbar)^2 )/(n - 1)

s = sqrt( sum( (beats - xbar)^2 )/ (n-1) )
s

scores = c(33, 42, 49, 49, 53, 55, 55, 61, 63, 67, 68, 68, 69, 69, 72, 73, 74, 78, 80, 83, 88, 88, 88, 90, 92, 94, 94, 94, 94, 96, 100)

# Calculate the Sample Mean
n = length(scores)

xbar = sum(scores)/n
xbar

# Calculate the Sample Standard Deviation
s = sqrt( sum( (scores - xbar)^2 ) / (n - 1) )
s

ages = c(9, 9.5, 9.5, 10, 10, 10, 10, 10.5, 10.5, 10.5, 10.5, 11, 11, 11, 11, 11, 11, 11.5, 11.5, 11.5)

# Calculate the Population Mean
N = length(ages)

mu = sum(ages)/N
mu


# Calculate the Population Standard Deviation
sigma = sqrt( sum( (ages - mu)^2 ) / N)
sigma

boxplot(ages)

#**VID=jP7PPzsJYkg**#
