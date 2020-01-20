#plot3:
par(mfrow=c(1,1),mar=c(4,4,4,2))
plot(data1$Time,data1$Sub_metering_1,xlab="",ylab="Energy sub metering", type="l",col="black")
points(data1$Time,data1$Sub_metering_2,type="l",col="red")
points(data1$Time,data1$Sub_metering_3,type="l",col="blue")
legend("topright", lwd=1, col=c("black", "red", "blue"), legend=names(data1[,7:9]))