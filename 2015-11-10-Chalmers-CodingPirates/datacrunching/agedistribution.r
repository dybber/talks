library("ggplot2")
library("scales")
library("plyr")
library("gridExtra")

piger <- read.csv("piger.csv", header = TRUE, sep=";")
piger$Gender <- "Girl"
drenge <- read.csv("drenge.csv", header = TRUE, sep=";")
drenge$Gender <- "Boy"

alle <- rbind(drenge, piger)
alle$Gender <- factor(alle$Gender, levels = c("Girl", "Boy"))

# Remove all below age 4
#alle <- alle[alle$Alder >= 4,]

alle <- alle[alle$Alder >= 5,]
alle <- alle[alle$Alder < 16,]


piger_alder_hist <-
    ggplot(data=subset(alle, (Gender == "Girl")), aes(Alder), xlab="Age") +
    coord_cartesian(xlim = c(3, 19)) +
    geom_bar(binwidth=1) +
    scale_x_discrete(limits=seq(4,18)) +
    xlab("Age") + ylab("Count") +
    ggtitle("Girls, age distribution") + 
    theme(plot.title = element_text(lineheight=.8, face="bold"))

drenge_alder_hist <-
    ggplot(data=subset(alle, (Gender == "Boy")), aes(Alder), xlab="Age") +
    coord_cartesian(xlim = c(3, 19)) +
    geom_bar(binwidth=1) +
    scale_x_discrete(limits=seq(4,18)) +
    xlab("Age") + ylab("Count") +
    ggtitle("Boys, age distribution") + 
    theme(plot.title = element_text(lineheight=1.2, face="bold"))

age_gender_hist <-
    ggplot(data=alle, aes(alle$Alder,fill=Gender)) +
    coord_cartesian(xlim = c(3, 19)) +
    geom_bar() +
    scale_x_discrete(limits=seq(4,18)) +
    xlab("Age") + ylab("Count") +
    ggtitle("Age distribution by gender") + 
    theme(plot.title = element_text(lineheight=1.2, face="bold"))

summarized <- ddply(alle, .(Alder,Gender), summarize, count = length(Alder))

ages <- summarized[(summarized$Gender == "Girl"),]$Alder
girlages <- summarized[(summarized$Gender == "Girl"),]$count
boyages <- summarized[(summarized$Gender == "Boy"),]$count

reldif <- (c(girlages/boyages,0)-c(0,girlages/boyages))[1:length(ages)+1]
age_reldiff <-
    ggplot() + aes(x=ages,y=reldif) +
    coord_cartesian(xlim = c(4, 16)) +
    geom_bar(stat="identity") +
    scale_x_discrete(limits=seq(5,15)) +
    xlab("Age") + ylab("Percentual change of girls") +
    ggtitle("Difference in percentage of girls between years")
    ## theme(plot.title = element_text(lineheight=1.2, face="bold"))

dif <- girlages/(girlages+boyages)
girl_percentage <-
    ggplot() + aes(x=ages,y=dif) +
    coord_cartesian(xlim = c(4, 16)) +
    geom_bar(stat="identity") +
    scale_x_discrete(limits=seq(5,15)) +
    xlab("Age") + ylab("Percentage of girls") +
    ggtitle("Percentage of girls by age")
    ## theme(plot.title = element_text(lineheight=1.2, face="bold"))

    

pdf("age-distribution.pdf", width=15, height=7)
grid.arrange(piger_alder_hist,
             drenge_alder_hist,
             ncol=2)
dev.off()

pdf("age-gender-hist.pdf", width=6, height=4)
grid.arrange(age_gender_hist)
dev.off()

pdf("age-reldiff.pdf", width=15, height=7)
grid.arrange(age_reldiff,
             girl_percentage,
             ncol=2)
dev.off()
