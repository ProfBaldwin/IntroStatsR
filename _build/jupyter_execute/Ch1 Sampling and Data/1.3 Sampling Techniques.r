# Randomly choose 6 students from the class
sample(1:30, size = 6)

# Generates the image of the two bar charts comparing human randomness with expected randomness below.
responses = c(3, 7, 10, 14, 5, 24, 21, 5, 20, 4)
n = sum(responses)


png("human_randomness.png", width = 1000, height = 500)

par(mfrow = c(1, 2), cex.main = 2, cex.axis = 1.5, cex.lab = 2, mar = c(5, 5, 5, 0))

# "Random" numbers chosen by students
barplot(height = responses, names = 1:10, ylim = c(0, 25), ylab = "Frequency", xlab = "Number Chosen", main = paste(n, "\"Random\" Numbers\nChosen by Students"))

# Expected distribution with true randomness
barplot(height = rep(n/10, 10), names = 1:10, ylim = c(0, 25), ylab = "Frequency", xlab = "Number Chosen", main = paste("Expected Distribution of", n, "\nNumbers Chosen Truly Randomly"))

dev.off()

sample(2:29, size = 5)

# Randomly choose one student as a starting point
sample(1:30, size = 1)

sample(2:29, size = 1)

S = 1:30
A = sort(sample(S, size = 10))
A
B = sort(sample(S[-A], size = 15))
B
C = S[-union(A, B)]
C

# Randomly choose 2 students from the Grade A stratum
sample(1:10, size = 2)

# Randomly choose 3 students from the Grade B stratum
sample(1:15, size = 3)

# Randomly choose 1 student from the Grade C or Lower stratum
sample(1:5, size = 1)

0.152 * 400

# Code to create table_clusters.png, to be displayed below.
library("plotrix")
library(repr)

#options(repr.plot.width = 14, repr.plot.height = 18)

draw_table = function(x, y, r, 
                     ) {
    
    name_text_size = 2.1
    table_text_size = 3
    name_offset = 1.375
    vert_offset = 1.375
    
    # Top Chair
    draw.circle(x, y+1.25*r, r/1.5, lwd = 2)
    text(x, y+1.375*r, names[1], cex = name_text_size)
    
    # Left Chair
    draw.circle(x + 1.25*r*cos(pi/2 + 2*pi/3), y + 1.25*r*sin(pi/2 + 2*pi/3), r/1.5, lwd = 2)
    text(x + 1.375*r*cos(pi/2 + 2*pi/3), y + vert_offset*r*sin(pi/2 + 2*pi/3), names[2], cex = name_text_size, srt = -60)
    
    # Right Chair
    draw.circle(x + 1.25*r*cos(pi/2 + 4*pi/3), y + 1.25*r*sin(pi/2 + 4*pi/3), r/1.5, lwd = 2)
    text(x + 1.375*r*cos(pi/2 + 4*pi/3), y + vert_offset*r*sin(pi/2 + 4*pi/3), names[3], cex = name_text_size, srt = 60)
    
    # Table
    draw.circle(x, y, r, col = "gray70", border = "white", lwd = 5)
    text(x, y, paste("Table", tablenum, sep = "\n"), cex = table_text_size)
}

students = c("Anselmo", "Bautista", "Bayani", "Cheng", "Cuarismo", "Cuningham", "Fontecha", "Hong", "Hoobler", "Jiao", "Khan", "Legeny", "Lundquist", "Macierz", "Motogawa", "Okimoto", "Patel", "Price", "Quizon", "Reyes", "Roquero", "Roth", "Rowell", "Salangsang", "Slade", "Stratcher", "Tallai", "Tran", "Wai", "Wood")
students = sample(students)


png("table_clusters.png", width = 1200, height = 1500)

par(mar = c(0, 0, 0, 0))
plot(c(-14, 14), c(-19, 21), type = "n", asp = 1, xaxs = "i", yaxs = "i", axes = FALSE, ann = FALSE)

draw_table(-10, 10, 3, tablenum = 1, names = students[1:3])
draw_table(-10, 0, 3, tablenum = 2, names = students[4:6])
draw_table(-10, -10, 3, tablenum = 3, names = students[7:9])

draw_table(0, 15, 3, tablenum = 4, names = students[10:12])
draw_table(0, 5, 3, tablenum = 5, names = students[13:15])
draw_table(0, -5, 3, tablenum = 6, names = students[16:18])
draw_table(0, -15, 3, tablenum = 7, names = students[19:21])

draw_table(10, 10, 3, tablenum = 8, names = students[22:24])
draw_table(10, 0, 3, tablenum = 9, names = students[25:27])
draw_table(10, -10, 3, tablenum = 10, names = students[28:30])

dev.off()

# Randomly select two of the ten tables
sample(1:10, size = 2)

sample(1:130, size = 6)
