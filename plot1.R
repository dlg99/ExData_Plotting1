setwd("~/git/ExData_Plotting1")
source("get_data.R")

data <- get_power_data()


png(filename = "plot1.png",
    width = 480, height = 480, units="px")

hist(data$Global_active_power, main="Global Active Power",  
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.off()
