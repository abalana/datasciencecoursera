plot1 <- function()	{
	setwd <- "C:/Users/arbalana/Desktop/ExploratoryDataAnalysis"
	df <- read.table("household_power_consumption.txt",skip=66637,nrows=2880,sep=";",colClass="character")
	##print(df[1:20,])
	df$datetime <- strptime(paste(df$V1,df$V2),format="%d/%m/%Y %H:%M:%S")
	##print(length(df$datetime))
	y <- as.numeric(df[,3])
	xlabel <- "Global Active Power (kilowatts)"
	ylabel <- "Frequency"
	title <- "Global Active Power"
	png(filename="plot1.png", height = 480, width = 480)
	hist(y,xlab = xlabel, ylab = ylabel,main = title,col = "red")
	dev.off()
}
