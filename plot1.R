source('dataread.R')
d <- dataread('household_power_consumption.txt')

png(filename = "plot1.png", bg = "white")

hist(d$Global_active_power, 
     col = 'red', 
     main = 'Global Active Power', 
     xlab = 'Global Active Power (kilowatts)', 
     ylim = c(0, 1200))

dev.off()  
