getwd()
setwd("~/Desktop/R/Coursera/exploratory")
data <- read.table('household_power_consumption.txt', header=TRUE, sep=";", stringsAsFactors=FALSE, na.strings="?")
dataneed <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
dataneeddatetime  <- paste(dataneed$Date,dataneed$Time,sep=" ")
datetime  <- strptime(dataneeddatetime, format="%d/%m/%Y  %H:%M:%S") 
png("plot1.png", width=480, height=480)
hist(dataneed$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
