getwd()
setwd("~/Desktop/R/Coursera/exploratory")
data <- read.table('household_power_consumption.txt', header=TRUE, sep=";", stringsAsFactors=FALSE, na.strings="?")
dataneed <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
dataneeddatetime  <- paste(dataneed$Date,dataneed$Time,sep=" ")
datetime  <- strptime(dataneeddatetime, format="%d/%m/%Y  %H:%M:%S") 
plot(datetime,dataneed$Global_active_power, type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
