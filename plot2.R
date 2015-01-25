#Have total emissions from PM2.5 decreased in the Baltimore City, 
#Maryland (fips == 24510) from 1999 to 2008?
#Use the base plotting system to make a plot answering this question.

arg <- aggregate(Emissions ~ year, NEI[NEI$fips==24510, ], sum)
png("plot2.png")
barplot(height=arg$Emissions, col="blue", names.arg=arg$year, xlab="years", ylab="emissions", main="Total emissions in Baltimore by year")
dev.off()