source('dataread.R')
d <- dataread('household_power_consumption.txt')

png(filename = "plot2.png", bg = "white")

plot(d$timestamp, d$Global_active_power, 
     type = 'l', 
     ylab = 'Global Active Power (kilowatts)', 
     xlab = "")

dev.off() 
