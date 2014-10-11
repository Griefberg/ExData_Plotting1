source('dataread.R')
d <- dataread('household_power_consumption.txt')

plot(d$timestamp, d$Sub_metering_1, 
     type = 'l', 
     ylab = 'Energy sub metering', 
     xlab = "")
lines(d$timestamp, d$Sub_metering_2, col = 'red')
lines(d$timestamp, d$Sub_metering_3, col = 'blue')
legend('topright', 
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       lty = 1, 
       col = c('black', 'red', 'blue'))

dev.copy(png, file = "plot3.png")  ## Copy my plot to a PNG file
dev.off() 