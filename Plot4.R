> data <- read.table(file = "household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

##Plot 4
> data <- read.table(file = "household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)## Read data
> Sys.setlocale(locale = "C")
> date_time <- do.call(paste0, data[c(1, 2)])
> days <- strptime(date_time, "%d/%m/%Y %H:%M:%S")##Show days in a comprehensive way

## Create the plot and the png file
> png(filename="plot4.png",width=480,height=480)
> par(mfrow = c(2,2))
> with(days, {
  +     plot(days,data$V3, type = "l", xlab = " ", ylab = "Global Active Power")
  +     plot(days,data$V5, type = "l", xlab = "datetime", ylab = "Voltage")
  +     plot(days,data$V7,type="l",xlab="",ylab="Energy sub metering")
  +     lines(days,data$V8,col="red")
  +     lines(days,data$V9,col="blue")
  +     legend("topright",lwd=1,bty = "n", col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  +     plot(days,data$V4, type = "l", xlab = " ", ylab = "Global_reactive_power")
  + })
> dev.off() 
