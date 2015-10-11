## Working Directory with the zip file.

library(dplyr)
unzip("exdata-data-household_power_consumption.zip", exdir =".", unzip = "internal", setTimes = TRUE)
dir()
    bigfile <- read.table("household_power_consumption.txt", na.strings = c("?", ""), sep = ";", header = T)
    tblbigfile <- tbl_df(bigfile)
str(tblbigfile)
      tblbigfile$Date <- as.Date(tblbigfile$Date, format = "%d/%m/%Y")
      tblbigfile$timetemp <- paste(tblbigfile$Date, tblbigfile$Time)
            tblbigfile$Time <- strptime(tblbigfile$timetemp, format = "%Y-%m-%d %H:%M:%S") 
str(bigfiledf)
            tblbigfile <- tblbigfile[ , 1:9]
      day1 <- as.Date("2007-02-01")
      day2 <- as.Date("2007-02-02")
          twodays <- tblbigfile[tblbigfile$Date >= day1 & tblbigfile$Date <= day2,] 

          ##Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
          
          png(file="plot3.png",width=480,height=480, units = "px")
          plot(twodays$Time, twodays$Sub_metering_1, ylab = "Energy sub metering", type = "l")
          lines(twodays$Time,twodays$Sub_metering_2, type = "l", col = "red")
          lines(twodays$Time,twodays$Sub_metering_3, type = "l", col = "blue") 
          legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), lwd = c(2.5, 2.5, 2.5), col= c("black", "red", "blue"))
          dev.off()
          
          