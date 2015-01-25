#Across the United States, how have emissions from coal combustion-related sources changed from 1999-2008?

NEISCC <- merge(NEI, SCC, by="SCC")
subset(NEISCC,grepl("coal",Short.Name))
arg <- aggregate(Emissions ~ year, subset, sum)
library(ggplot2)
ggplot(arg, aes(year, Emissions)) + ggtitle("Coal emissions by year") +geom_bar(stat="identity")

ggsave(file="plot4.png")