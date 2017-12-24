data<-read.csv("household_power_consumption.txt",sep=";")
x<-data[data$Date=="1/2/2007",]
y<-data[data$Date=="2/2/2007",]
mydata<-rbind(x,y)
mydata$mydaytime<-strptime(paste(mydata$Date,mydata$Time),"%d/%m/%Y %H:%M:%S" )
png(filename="plot2.png")
plot(mydata$mydaytime,mydata$Global_active_power,type="l",ylab = "Global Activel Power(kilowatts)",xlab="")
dev.off()