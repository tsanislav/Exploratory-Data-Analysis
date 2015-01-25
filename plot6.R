

arg <- aggregate(Emissions ~ year + fips, NEI[NEI$type=="ON-ROAD" & (NEI$fips =="24510" | NEI$fips =="06037") , ], sum)
arg$fips[arg$fips=="24510"] <- "Baltimore"
arg$fips[arg$fips=="06037"] <- "Los Angeles"
library(ggplot2)
ggplot(arg, aes(factor(year), Emissions)) + 
facet_grid(. ~ fips)+
ggtitle("Comparison between LA and Baltimor on On road emissions evolution")+
geom_bar(stat="identity")

ggsave(file="plot6.png")