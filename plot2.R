#plot2:
data1=na.omit(data1)
data1$Time=strptime(paste(data1$Date,data1$Time),"%F %T")
par(mfrow=c(1,1),mar=c(5,4.5,4,2))
plot(data1$Time,data1$Global_active_power,xlab="", pch =".", type="l",ylab="Global Active Power (kilowatts)")