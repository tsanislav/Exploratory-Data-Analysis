

arg <- aggregate(Emissions ~ year, NEI[NEI$type=="ON-ROAD" & NEI$fips =="24510", ], sum)
library(ggplot2)
ggplot(arg, aes(factor(year), Emissions)) + ggtitle("On road emissions by year in Baltimore") +geom_bar(stat="identity")

ggsave(file="plot5.png")