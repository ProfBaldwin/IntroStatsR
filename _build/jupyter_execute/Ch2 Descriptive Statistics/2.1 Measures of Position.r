ages = c(18, 21, 22, 25, 26, 27, 29, 30, 31, 33, 36, 37, 41, 42, 47, 52, 55, 57, 58, 59, 62, 65, 67, 71, 72, 73, 74, 76, 77)

quantile(ages, probs = 0.73)

data = c(1, 11.5, 6, 7.2, 4, 8, 9, 10, 6.8, 8.3, 2, 2, 10, 1)

quantile(data, probs = 0.50)

prices = c(389950, 230500, 158000, 479000, 639000, 114950, 5500000, 387000, 659000, 529000, 575000, 488800, 1095000)

#First Quartile
quantile(prices, probs = 0.25)

#Median/Second Quartile
quantile(prices, probs = 0.50)

#Third Quartile
quantile(prices, probs = 0.75)

prices = c(389950, 230500, 158000, 479000, 639000, 114950, 5500000, 387000, 659000, 529000, 575000, 488800, 1095000)
quartiles = c(0.25, 0.50, 0.75)

#All Quartiles
quantile(prices, probs = quartiles)

#**VID=1x5rbOrDvM4**#

data = c(1, 2, 2, 3, 5, 7, 9, 9, 11, 12, 15)
quartiles = c(0.0, 0.25, 0.5, 0.75, 1.00)

quantile(data, probs = quartiles)

#**ALT=A box plot of the above data.**#
boxplot(data)


#**ALT=A box plot of the data from example 1.4**#
heights = c(59, 60, 61, 62, 62, 63, 63, 64, 64, 64, 65, 65, 65, 65, 65, 65, 65, 65, 65, 66, 66, 67, 67, 68, 68, 69, 70, 70, 70, 70, 70, 71, 71, 72, 72, 73, 74, 74, 75, 77)

boxplot(heights)

#**ALT=Two boxplots, one each for the two data sets in example 1.5**#
data1 = c(64, 73, 101.3, 71.1, 94, 85.5, 99.9, 42, 92.4, 103, 54.7, 72.5, 101.9, 86.4, 47.2, 71.5, 71)
data2 = c(56.8, 71, 49, 69.4, 67.6, 71, 68.5, 61.1, 50.9, 71, 71, 71, 72, 72, 71, 64, 67.2, 52.5, 71, 69, 72, 71.3, 58.3, 71, 71)

boxplot(data1, data2)
