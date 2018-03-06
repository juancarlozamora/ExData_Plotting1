# Set the working directory into downloaded directory of the data set.
setwd("C:/Users/zamojua/Documents/Graduate Studies/Data Science Course/Exploratory Data Analysis/Week 1")

# Load the data from household_power_consumption.txt
consumption <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

# Subset the data into the dates from 2007-02-01 to 2007-02-02
subsetpower <- consumption[consumption$Date %in% c("1/2/2007", "2/2/2007"),]

# Convert the Date and Time variables into Date/Time classes for R
# Owned by Juan Carlo Zamora
datetime <- strptime(paste(subsetpower$Date, subsetpower$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
plot2 <- as.numeric(subsetpower$Global_active_power)

# Save into PNG type of visual graphics and set the size to 480
png("plot2.png", width = 480, height = 480)

# Plot and save the file
plot(datetime, plot2, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

#turn off device

dev.off()

