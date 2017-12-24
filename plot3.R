data<-read.csv("household_power_consumption.txt",sep=";")
x<-data[data$Date=="1/2/2007",]
y<-data[data$Date=="2/2/2007",]
mydata<-rbind(x,y)
mydata$mydaytime<-strptime(paste(mydata$Date,mydata$Time),"%d/%m/%Y %H:%M:%S" )
png(filename="plot3.png")
plot(mydata$mydaytime,mydata$Sub_metering_1,type="l",ylab = "Global Activel Power(kilowatts)",xlab="")
lines(mydata$mydaytime,mydata$Sub_metering_2,type="l",col="red")
lines(mydata$mydaytime,mydata$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,cex=0.8)
dev.off()