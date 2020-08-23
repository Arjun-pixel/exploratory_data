df<-read.table("household_power_consumption.txt", header = T,sep=";", comment.char="%", stringsAsFactors=FALSE, na.strings="?")
new_data<- subset(df,df$Date=="1/2/2007"|df$Date=="2/2/2007")
datetime <- strptime(paste(new_data$Date, new_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime,new_data$Sub_metering_1,type="n",xlab = "",ylab="Energy sub metering")
 lines(datetime,new_data$Sub_metering_1,col="black")
 lines(datetime,new_data$Sub_metering_2,col="red")
 lines(datetime,new_data$Sub_metering_3,col="blue")
 legend("topright",lty=c(1,1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
 