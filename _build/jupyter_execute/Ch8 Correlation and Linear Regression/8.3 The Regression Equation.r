x = c(5, 2, 4, 5, 11, 0, 8, 5)
y = c(6, 4, 2, 7, 13, -2, 12, 8)

lm(y~x)

#**ALT=Scatter plot of above data with the best fit line going through it.**#
# Graph the scatter plot
plot(x, y)

# Plot the line
abline(a = -0.625, b = 1.375)

x = c(65, 67, 71, 71, 66, 75, 67, 70, 71, 69, 69)
y = c(175, 133, 185, 163, 125, 198, 153, 163, 159, 151, 159)

lm(y~x)

#**ALT=Graph of a scatter plot of the data in example 3.1 together with the best fit line.**#
# Graph of the scatter plot
plot(x, y)

# Plot of the best fit line
abline(a = -176.301, b = 4.866)

#**VID=CVG6NpBaJpQ**#
