#**ALT=Histogram conists of 4 bars. The x-axis is titled Hours Slept per Night and ranges from 5 to 9 in intervals of 1. Vertical axis is titled Frequency and ranges from 0 to 6 in intervals of 1.**#
# Generate the histogram included in the text below.
library(repr)
options(repr.plot.width = 7, repr.plot.height=4)

png("intro_histogram.png", width = 1000, height = 500)

hours_sleep = c(5, 5.5, 6, 6, 6, 6.5, 6.5, 6.5, 6.5, 7, 7, 8, 8, 9)
par(mar = c(7, 7, 0, 0))
hist(hours_sleep, main="", xlab="Hours Slept per Night", cex.lab = 2, cex.axis = 1.5, col = "gray70")

dev.off()

## To Do: Example Video

## To Do: Example Video

## To Do: Example Video

## To Do: Example Video
