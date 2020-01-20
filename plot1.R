data=read.table("/Users/jimzyc/Desktop/Exploratory Data Analysis-Coursera/household_power_consumption.txt", header = TRUE, sep = ";")
head(data)
date=as.Date(data$Date,format="%d/%m/%Y")
data[,1]=date
data1=subset(data,Date=="2007-02-01"|Date=="2007-02-02")
data1$Global_active_power=as.numeric(as.character(data1$Global_active_power))
data1$Sub_metering_1=as.numeric(as.character(data1$Sub_metering_1))
data1$Sub_metering_2=as.numeric(as.character(data1$Sub_metering_2))
data1$Sub_metering_3=as.numeric(as.character(data1$Sub_metering_3))
data1$Global_reactive_power=as.numeric(as.character(data1$Global_reactive_power))
data1$Voltage=as.numeric(as.character(data1$Voltage))

# plot1:
par(mfrow=c(1,1),mar=c(5,4.5,4,2))
hist(data1$Global_active_power,col="red",xlab="Global Active Power(kilowatts)",main="Global Active Power")