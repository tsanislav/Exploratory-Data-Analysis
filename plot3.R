#Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999-2008 for Baltimore City? Which have seen increases in emissions from 1999-2008?
#Use the ggplot2 plotting system to make a plot answer this question.


arg <- aggregate(Emissions ~ year + type, NEI[NEI$fips==24510, ], sum)

ggplot(arg, aes(x=year, y=Emissions, colour=type)) + ggtitle("Baltimore emissions by year by type") +geom_line()

ggsave(file="plot3.png")
