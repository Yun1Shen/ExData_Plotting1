data<-read.csv("household_power_consumption.txt",sep=";")
x<-data[data$Date=="1/2/2007",]
y<-data[data$Date=="2/2/2007",]
mydata<-rbind(x,y)
png(filename="plot1.png")
hist(as.numeric(mydata$Global_active_power), main="Global Active Power", xlab="Global Activel Power(kilowatts)",ylim=c(0,1200),col="red")
dev.off()