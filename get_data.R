
get_power_data <- function() {
  #download
  if(!file.exists("downloads")) {
    dir.create("downloads")
  }
  
  target <- "downloads/household_power_consumption.zip"
  
  if(!file.exists(target)) {
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
                  destfile = target, mode="wb")
  }
  
  #read
  z <- unzip(paste(getwd(), target, sep = "/"), 
             "household_power_consumption.txt")
  data <- read.table(z, sep = ";", header=T, na.strings="?", 
                     colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
  
  #filter
  data <- data[(data$Date == "1/2/2007") | (data$Date == "2/2/2007"),]
  
  #convert dates
  data$DateTime <- strptime(paste(data$Date, data$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

  data
}


