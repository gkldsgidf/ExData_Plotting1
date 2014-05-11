> data <- read.table(file = "household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

##Plot 2
> data <- read.table(file = "household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)## Read data
> Sys.setlocale(locale = "C")
> date_time <- do.call(paste0, data[c(1, 2)])
> days <- strptime(date_time, "%d/%m/%Y %H:%M:%S")##Show days in a comprehensive way

## Create the plot and the png file
> png(filename="plot2.png",width=480,height=480)
> plot(days,data$V3, type = "l", xlab = " ", ylab = "Global Active Power (kilowatts)")
> dev.off()
