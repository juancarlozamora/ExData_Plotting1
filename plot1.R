# Set the working directory into downloaded directory of the data set.

setwd("C:/Users/zamojua/Documents/Graduate Studies/Data Science Course/Exploratory Data Analysis/Week 1")

# Load the data required

consumption <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

# Subset the data into the dates from 2007-02-01 to 2007-02-02

subsetpower <- consumption[consumption$Date %in% c("1/2/2007", "2/2/2007"),]

# Owned by Juan Carlo Zamora
# Convert the data into the same class

plot1<-as.numeric(subsetpower$Global_active_power)

# Save the data into visual graphic data of PNG
# set the width and height to 480

png("plot1.png", width = 480, height = 480)

# Plot the data using histogram

hist(plot1, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()

