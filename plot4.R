data<-read.csv("household_power_consumption.txt",sep=";")
x<-data[data$Date=="1/2/2007",]
y<-data[data$Date=="2/2/2007",]
mydata<-rbind(x,y)
mydata$mydaytime<-strptime(paste(mydata$Date,mydata$Time),"%d/%m/%Y %H:%M:%S" )
png(filename="plot4.png")
par(mfrow = c(2, 2), mar = c(6, 4, 2, 1), oma = c(0, 0, 2, 0))
with(mydata,{
  plot(mydaytime,Global_active_power,type="l",ylab = "Global Activel Power",xlab="")
  plot(mydaytime,Voltage,type="l",ylab = "Voltage",xlab="datetime")
  plot(mydaytime,mydata$Sub_metering_1,type="l",ylab = "Global Activel Power",xlab="")
  lines(mydaytime,mydata$Sub_metering_2,type="l",col="red")
  lines(mydaytime,mydata$Sub_metering_3,type="l",col="blue")
  legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,cex=0.8,text.font=1.3)
  plot(mydaytime,Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datetime")
  
})
dev.off()
