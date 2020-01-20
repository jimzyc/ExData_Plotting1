#plot4:
par(mfcol=c(2,2), mar=c(4.5,5,2,2))

plot(data1$Time,data1$Global_active_power,xlab="", pch =".", type="l",ylab="Global Active Power (kilowatts)")

plot(data1$Time,data1$Sub_metering_1,xlab="",ylab="Energy sub metering", type="l",col="black")
points(data1$Time,data1$Sub_metering_2,type="l",col="red")
points(data1$Time,data1$Sub_metering_3,type="l",col="blue")
legend("topright", lwd=1, col=c("black", "red", "blue"), legend=names(data1[,7:9]))


plot(data1$Time,data1$Voltage,xlab="datetime", pch =".", type="l",ylab="Voltage")


plot(data1$Time,data1$Global_reactive_power,xlab="datetime", pch =".", type="l",ylab="Global_reactive_power")
