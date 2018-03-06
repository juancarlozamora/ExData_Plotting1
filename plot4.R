# Set the working directory into downloaded directory of the data set.
setwd("C:/Users/zamojua/Documents/Graduate Studies/Data Science Course/Exploratory Data Analysis/Week 1")

# Load the data required from household_power_consumption.txt
consumption<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

# Subset the data into the dates from 2007-02-01 to 2007-02-02

subsetpower<-consumption[consumption$Date %in% c("1/2/2007", "2/2/2007"),]

# Convert the Date and Time variables into Date/Time classes in R
# Owned by Juan Carlo Zamora

datetime<-strptime(paste(subsetpower$Date, subsetpower$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

plot2<-as.numeric(subsetpower$Global_active_power)
plot4<-as.numeric(subsetpower$Global_reactive_power)
voltage<-as.numeric(subsetpower$Voltage)
submeter1<-as.numeric(subsetpower$Sub_metering_1)
submeter2<-as.numeric(subsetpower$Sub_metering_2)
submeter3<-as.numeric(subsetpower$Sub_metering_3)

# Save into PNG type of visual graphics and set the size to 480

png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))

# Plot the file

plot(datetime, plot2, type = "l", xlab = "", ylab = "Global Active Power", cex=0.2)

plot(datetime, voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(datetime, submeter1, type = "l", ylab = "Energy Submetering", xlab = "")
lines(datetime, submeter2, type = "l", col="red")
lines(datetime, submeter3, type = "l", col="blue")

# Add legend

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty =, lwd = 2.5, col = c("black", "red", "blue"), bty = "o")

# Plot the 4th graphics

plot(datetime, plot4, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

#turn off device

dev.off()

