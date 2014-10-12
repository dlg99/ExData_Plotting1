setwd("~/git/ExData_Plotting1")
source("get_data.R")

data <- get_power_data()


png(filename = "plot2.png",
    width = 480, height = 480, units="px")

plot(data$DateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()
