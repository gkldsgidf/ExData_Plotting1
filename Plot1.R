> data <- read.table(file = "household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

## Plot 1 
> data <- read.table(file = "household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)## Read data
> Sys.setlocale(locale = "C")
## Create the plot and the png file
png(filename="plot1.png",width=480,height=480)
> hist(data$V3, col = "red", main ="Global Active Power", ylim = c(0,1200), xlab = "Global Active Power (kilowatts)")
> dev.off()
