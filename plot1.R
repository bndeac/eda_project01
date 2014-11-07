## Plotting histogram of global_active_power for dates 2007/02/01 - 2007/02/02

ctypes = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric');

hpc <- read.table("C:/Users/Evan/Documents/Coursera/ExploratoryDataAnalysis/household_power_consumption.txt",sep=';',header=TRUE,colClasses=ctypes,na.strings='?');

# Subset data to desired dates
hpc.sub <- subset(hpc, Date == '1/2/2007' | Date == '2/2/2007');

hist(hpc.sub$Global_active_power,col='red',xlab='Global Active Power (kilowatts)',main='Global Active Power');
