source('dataread.R')
d <- dataread('household_power_consumption.txt')

par(mfrow = c(2,2),  mar = c(4,4,1,1))

# graph 1
plot(d$timestamp, d$Global_active_power, 
     type = 'l', 
     ylab = 'Global Active Power', 
     xlab = "")

# graph 2
plot(d$timestamp, d$Voltage, 
     type = 'l', 
     ylab = 'Voltage', 
     xlab = "datetime")

# graph 3
plot(d$timestamp, d$Sub_metering_1, 
     type = 'l', 
     ylab = 'Energy sub metering', 
     xlab = "")
lines(d$timestamp, d$Sub_metering_2, col = 'red')
lines(d$timestamp, d$Sub_metering_3, col = 'blue')
legend('topright', 
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       lty = 1, 
       lwd = 1,
       col = c('black', 'red', 'blue'),
       cex = 0.5,
       )

# graph 4
plot(d$timestamp, d$Global_reactive_power, 
     type = 'l', 
     ylab = 'Global Reactive Power', 
     xlab = "datetime")

dev.copy(png, file = "plot4.png")  ## Copy my plot to a PNG file
dev.off() 
