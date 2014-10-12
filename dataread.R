dataread <- function(file_name){
    require(lubridate)
    require(dplyr)
    Sys.setlocale("LC_TIME", "en_US")
    data <- read.table(file = file_name, header = T, sep = ';', na.strings = '?',
                       colClasses = c(rep('character',2), rep('numeric', 7)))
    data$Date <-  dmy(data$Date)
    d <- filter(data, Date <= ymd('2007-02-02'), Date >= ymd('2007-02-01'))
    d$timestamp <- ymd_hms(paste(d$Date, d$Time), tz ='UTC')
    return(d)
}
    