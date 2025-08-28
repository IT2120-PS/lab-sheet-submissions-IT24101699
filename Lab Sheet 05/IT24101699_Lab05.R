setwd("//Users//shehanitharuka//Documents//IT24101699_PS_Lab5")

#1
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

#2
breaks <- seq(20, 70, length.out = 10)
hist(Delivery_Times$Delivery_Time,right = FALSE,breaks = breaks, main = "Histogram of Delivery Times", xlab = "Delivery Time", ylab = "Frequency")
     

#4
hist_data <- hist(Delivery_Times$Delivery_Time, breaks = breaks, right = FALSE, plot = FALSE)
frequencies <- hist_data$counts
cum_freq <- cumsum(frequencies)
print(frequencies)
print(cum_freq)

midpoints <- hist_data$mids
plot(midpoints, cum_freq, type = "b", main = "Cumulative Frequency Polygon for Delivery Time", xlab = "Delivery Time (minutes)", ylab = "Cumulative Frequency")
