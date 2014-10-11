source('dataread.R')
d <- dataread('household_power_consumption.txt')

plot(d$timestamp, d$Global_active_power, 
     type = 'l', 
     ylab = 'Global Active Power (kilowatts)', 
     xlab = "")

dev.copy(png, file = "plot2.png")  ## Copy my plot to a PNG file
dev.off() 
