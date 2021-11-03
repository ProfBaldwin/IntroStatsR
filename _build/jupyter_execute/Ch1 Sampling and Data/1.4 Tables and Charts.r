proportions = c(19, 43, 38)
age_groups = c("Children", "Working-age Adults", "Retirees")

barplot(height = proportions, names = age_groups)

png("park_city_barchart.png", width = 1000, height = 500)

proportions = c(19, 43, 38)
age_groups = c("Children", "Working-age Adults", "Retirees")

barplot(height = proportions, names = age_groups, cex.names = 2, cex.axis = 2)

dev.off()

APproportion = c(10.3, 9.0, 17.0, 0.6, 57.1, 6.0)
race = c("A", "B", "C", "D", "E", "F")

barplot(height = APproportion, names = race)

png("ap_examinees_barchart.png", width = 1000, height = 500)

APproportion = c(10.3, 9.0, 17.0, 0.6, 57.1, 6.0)
race = c("A", "B", "C", "D", "E", "F")

barplot(height = APproportion, names = race, cex.names = 2, cex.axis = 2)

dev.off()

proportions = c(19, 43, 38)
age_groups = c("Children", "Working-age Adults", "Retirees")

pie(x = proportions, labels = age_groups)

png("park_city_piechart.png", width = 1000, height = 1000)

par(mar = c(2, 0, 0, 0))

proportions = c(19, 43, 38)
age_groups = c("Children", "Working-age\nAdults", "Retirees")

pie(x = proportions, labels = age_groups, cex = 2.5)

dev.off()

png("pie_vs_bar.png", width = 1000, height = 1000)

a <- matrix(c(17, 18, 20, 22, 23,
                20, 20, 19, 21, 20,
                23, 22, 20, 18, 17), nrow=3, byrow=T)
  titles <- c("A", "B", "C")
  cols <- c("#173f5f", "#20639b", "#3caea3", "#f6d55c", "tomato2")
  
  defaultmar <- par()$mar
  layout(matrix(c(1,3,5,
                  2,4,6), nrow=2, byrow=T), height=c(1,1))       
  par(cex=2)
  par(font=1)
  par(las=1)
  par(font.axis=1)
  par(mgp=c(1,1,0))
  
  for (i in 1:nrow(a)) {
    par(mar=c(0,0,2,0))
    pie(a[i,], init=90, clockwise=T, col=cols, radius=0.8)
    title(main=titles[i], line=0)
    par(mar=defaultmar+c(-2,-1.5,-4,-0.5))
    par(mgp=c(0,0.5,0))
    barplot(a[i,], horiz=F, xlim=c(0,10), ylim=c(0,25), col=cols, border=1,
            names.arg=1:5, space=0.8, axes=F)
    par(mgp=c(0,1,0))
  
    
    axis(2)
  }

dev.off()

#**VID=hHDvzYoxWHI**#

data = c(60, 60.5, 61, 61, 61.5, 63.5, 63.5, 63.5, 64, 64, 64, 64, 64, 64, 64, 64.5, 64.5, 64.5, 64.5, 64.5, 64.5, 64.5, 64.5, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67.5, 67.5, 67.5, 67.5, 67.5, 67.5, 68, 68, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69.5, 69.5, 69.5, 69.5, 69.5, 70, 70, 70, 70, 70, 70, 70.5, 70.5, 70.5, 71, 71, 71, 72, 72, 72, 72.5, 72.5, 73, 73.5, 74)

hist(x = data)

png("soccer_hist.png", width = 1000, height = 500)

par(mgp = c(4, 1, 0), mar = c(5, 6, 5, 0))
data = c(60, 60.5, 61, 61, 61.5, 63.5, 63.5, 63.5, 64, 64, 64, 64, 64, 64, 64, 64.5, 64.5, 64.5, 64.5, 64.5, 64.5, 64.5, 64.5, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67.5, 67.5, 67.5, 67.5, 67.5, 67.5, 68, 68, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69.5, 69.5, 69.5, 69.5, 69.5, 70, 70, 70, 70, 70, 70, 70.5, 70.5, 70.5, 71, 71, 71, 72, 72, 72, 72.5, 72.5, 73, 73.5, 74)

hist(x = data, cex.lab = 2.5, cex.axis = 2, cex.main = 2.5, col = "gray70")

dev.off()

#**ALT=Histogram of data in example 5.4 generated using R**#
books <- c(0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6)

hist(x = books)
