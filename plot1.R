source('dataread.R')
d <- dataread('household_power_consumption.txt')

hist(d$Global_active_power, 
     col = 'red', 
     main = 'Global Active Power', 
     xlab = 'Global Active Power (kilowatts)', 
     ylim = c(0, 1200))

dev.copy(png, file = "plot1.png")  ## Copy my plot to a PNG file
dev.off()  
