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
          
          png(file="plot2.png",width=480,height=480, units = "px")
          plot(twodays$Time, twodays$Global_active_power, ylab = "Global Active Power(kilowatts)", type = "l")
          dev.off()
          