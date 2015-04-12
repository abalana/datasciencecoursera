plot2 <- function()	{
	setwd <- "C:/Users/arbalana/Desktop/ExploratoryDataAnalysis"
	df <- read.table("household_power_consumption.txt",skip=66637,nrows=2880,sep=";",colClass="character")
	df$datetime <- strptime(paste(df$V1,df$V2),format="%d/%m/%Y %H:%M:%S")
	y <- as.numeric(df[,3])
	xlabel <- ""
	ylabel <- "Global Active Power (kilowatts)"
	png(filename="plot2.png",height=480, width=480)
	plot(df$datetime,y,"l",ylab = ylabel, xlab =xlabel, height=480, width=480)
	dev.off()
}
