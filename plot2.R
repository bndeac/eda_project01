##
ctypes = c('Date','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric');

hpc <- read.table("C:/Users/Evan/Documents/Coursera/ExploratoryDataAnalysis/household_power_consumption.txt",sep=';',header=TRUE,colClasses=ctypes,na.strings='?');

# Subset data to desired dates
hpc.sub <- subset(hpc, Date == '1/2/2007' | Date == '2/2/2007');

# Create datetime column from Date and Time columns
hpc.sub$datetime <- strptime(paste(hpc.sub$Date,hpc.sub$Time), format='%d/%m/%Y %H:%M:%S');

# plot it 
plot(hpc.sub$datetime,hpc.sub$Global_active_power,type='l',xlab='',ylab='Global Active Power (kilowatts)');
