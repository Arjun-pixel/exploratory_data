df<-read.table("household_power_consumption.txt", header = T,sep=";", comment.char="%", stringsAsFactors=FALSE, na.strings="?")
new_data<- subset(df,df$Date=="1/2/2007"|df$Date=="2/2/2007")
plot1<-hist(new_data$Global_active_power,col="red",xlab = "Global Active Power(kilowatts)")
