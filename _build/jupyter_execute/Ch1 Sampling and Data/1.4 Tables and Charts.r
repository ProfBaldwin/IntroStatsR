# Relative Frequency for Face-to-Face Modality
42/75

# Relative Frequency for Online Modality
26/75

# Relative Frequency for Hybrid Modality
7/75

## To Do: Example Video with missing relative frequency

png("elementary_attendance_barchart.png", width = 1000, height = 500)

absences = c(5, 2, 3, 4, 6)
day = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

barplot(height = absences, names = day, ylim = c(0,6.2), cex.names = 2, cex.axis = 2, cex.main = 2.5, main = "Student Absences")
for (j in 1:6) {
    abline(h = j, col = "gray50")
}
barplot(height = absences, names = day, ylim = c(0,6.2), cex.names = 2, cex.axis = 2, cex.main = 2.5, main = "Student Absences", add = TRUE)

dev.off()

2/20 * 100

## To Do: Video Example Reading Barcharts

proportions = c(19.11, 43.37, 37.52)
age_groups = c("Children", "Working-age Adults", "Retirees")

barplot(height = proportions, names = age_groups)

png("park_city_barchart.png", width = 1000, height = 500)

proportions = c(19.11, 43.37, 37.52)
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

## To Do: Video Example Creating Bar Charts

proportions = c(19.11, 43.37, 37.52)
age_groups = c("Children", "Working-age Adults", "Retirees")

pie(proportions, labels = age_groups)

png("park_city_piechart.png", width = 1000, height = 1000)

par(mar = c(2, 0, 0, 0))

proportions = c(19.11, 43.37, 37.52)
age_groups = c("Children", "Working-age\nAdults", "Retirees")

pie(proportions, labels = age_groups, cex = 2.5)

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

png("gas_hist.png", width = 1000, height = 700)

x = runif(45, min = 4.30, max = 4.40)
x = append(x, runif(60, min = 4.40, max = 4.50))
x = append(x, runif(70, min = 4.50, max = 4.60))
x = append(x, runif(40, min = 4.60, max = 4.70))
x = append(x, runif(20, min = 4.70, max = 4.80))
x = append(x, runif(15, min = 4.80, max = 4.90))
x = append(x, runif(5, min = 4.90, max = 5.00))

par(mgp = c(4, 1, 0), mar = c(5, 6, 5, 0))
hist(x, ylim = c(0, 71), xaxt = "n", xlab = "Gas Prices", main = "Histogram of Gas Prices in the Bay Area", cex.lab = 2.5, cex.axis = 2, cex.main = 2.5, col = "gray70")
for (j in 1:7) {
    abline(h = j*10, col = "gray50")
}
hist(x, ylim = c(0, 71), xaxt = "n", xlab = "Gas Prices", main = "Histogram of Gas Prices in the Bay Area", cex.lab = 2.5, cex.axis = 2, cex.main = 2.5, col = "gray70", add = TRUE)
axis(1, at = seq(from = 4.30, to = 5.00, by = 0.10), labels = c("4.30", "4.40", "4.50", "4.60", "4.70", "4.80", "4.90", "5.00"), cex.axis = 2)

dev.off()

130/255 * 100

## To Do: Video Example Interpret Histogram

data = c(60, 60.5, 61, 61, 61.5, 63.5, 63.5, 63.5, 64, 64, 64, 64, 64, 64, 64, 64.5, 64.5, 64.5, 64.5, 64.5, 64.5, 64.5, 64.5, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67.5, 67.5, 67.5, 67.5, 67.5, 67.5, 68, 68, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69.5, 69.5, 69.5, 69.5, 69.5, 70, 70, 70, 70, 70, 70, 70.5, 70.5, 70.5, 71, 71, 71, 72, 72, 72, 72.5, 72.5, 73, 73.5, 74)

hist(data)

png("soccer_hist.png", width = 1000, height = 500)

par(mgp = c(4, 1, 0), mar = c(5, 6, 5, 0))
data = c(60, 60.5, 61, 61, 61.5, 63.5, 63.5, 63.5, 64, 64, 64, 64, 64, 64, 64, 64.5, 64.5, 64.5, 64.5, 64.5, 64.5, 64.5, 64.5, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 66.5, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67.5, 67.5, 67.5, 67.5, 67.5, 67.5, 68, 68, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69.5, 69.5, 69.5, 69.5, 69.5, 70, 70, 70, 70, 70, 70, 70.5, 70.5, 70.5, 71, 71, 71, 72, 72, 72, 72.5, 72.5, 73, 73.5, 74)

hist(data, cex.lab = 2.5, cex.axis = 2, cex.main = 2.5, col = "gray70")

dev.off()

books = c(0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6)

hist(books)

png("books_hist.png", width = 1000, height = 500)

par(mgp = c(4, 1, 0), mar = c(5, 6, 5, 0))
books = c(0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6)

hist(books, cex.lab = 2.5, cex.axis = 2, cex.main = 2.5, col = "gray70")

dev.off()

png("books_bar.png", width = 1000, height = 500)

par(mgp = c(4, 1, 0), mar = c(5, 6, 5, 0))
books = c(0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6)

freq = c()
lab = c()
for (j in 0:6) {
    freq = append(freq, sum(books == j))
    lab = append(lab, paste0(j, " books"))
}

barplot(height = freq, names = lab, 
        main = "Bar chart of books",
        ylab = "Frequency",
        xlab = "Number of Books",
        cex.lab = 2.5, cex.axis = 2, cex.names = 2, cex.main = 2.5)

dev.off()

## To Do: Video Example Create Histogram
