## Roche Vessel Data Analysis

#install.packages("ggplot2")
#install.packages("tidyverse")
library(ggplot2)
library(tidyverse)
library(dplyr)
library(ggpubr)
library(gapminder)
library(wesanderson)

setwd("/Users/user/Desktop/Vasculature Project/Analysis in R")
data <- read.csv("RocheDataForR.csv", header=T, dec=".",sep=",",check.names = F)
data

data$Day <- as.factor(data$Day)

#General

plot(data$`NrOfBranchingPoints(Roche)`[data$Category=="Treated"],data$`NrOfSegments(Roche)`[data$Category=="Treated"])
plot(data$`NrOfBranchingPoints(Roche)`[data$Category=="Control"],data$`NrOfSegments(Roche)`[data$Category=="Control"])

cor(data$`NrOfBranchingPoints(Roche)`, data$`NrOfSegments(Roche)`)

plot(data$`NrOfBranchingPoints(Roche)`[data$Category=="Treated"],data$`NrOfBranchingPoints(Russ)`[data$Category=="Treated"])
plot(data$`NrOfBranchingPoints(Roche)`[data$Category=="Control"],data$`NrOfBranchingPoints(Russ)`[data$Category=="Control"])

cor(data$`NrOfBranchingPoints(Roche)`, data$`NrOfBranchingPoints(Russ)`)

plot(data$`NrOfSegments(Roche)`[data$Category=="Treated"],data$`NrOfSegments(Russ)`[data$Category=="Treated"])
plot(data$`NrOfSegments(Roche)`[data$Category=="Control"],data$`NrOfSegments(Russ)`[data$Category=="Control"])

cor(data$`NrOfSegments(Roche)`, data$`NrOfSegments(Russ)`)

plot(data$`NrOfSegments(Roche)`[data$Category=="Treated"],data$`Volume(Roche)`[data$Category=="Treated"])
plot(data$`NrOfSegments(Roche)`[data$Category=="Control"],data$`Volume(Roche)`[data$Category=="Control"])

cor(data$`NrOfSegments(Roche)`, data$`Volume(Roche)`)

cor(data$`NrOfSegments(Roche)`, data$`VitalVolume`)

#Dim0 results

plot(data$Day[data$Category=="Treated"], data$NrOfShortBars[data$Category=="Treated"])
plot(data$Day[data$Category=="Control"],data$NrOfShortBars[data$Category=="Control"])

plot(data$Day[data$Category=="Treated"], data$`NrOfShortBars/Segment`[data$Category=="Treated"])
plot(data$Day[data$Category=="Control"],data$`NrOfShortBars/Segment`[data$Category=="Control"])



plot(data$`NrOfSegments(Roche)`[data$Category=="Treated"], data$NrOfShortBars[data$Category=="Treated"])
plot(data$`NrOfSegments(Roche)`[data$Category=="Control"],data$NrOfShortBars[data$Category=="Control"])

cor(data$`NrOfSegments(Roche)`, data$NrOfShortBars, use = "complete.obs")

plot(data$`NrOfSegments(Roche)`[data$Category=="Treated"], data$`NrOfShortBars/Segment`[data$Category=="Treated"])
plot(data$`NrOfSegments(Roche)`[data$Category=="Control"],data$`NrOfShortBars/Segment`[data$Category=="Control"])


cor(data$`NrOfSegments(Roche)`, data$`NrOfShortBars/Segment`, use = "complete.obs")

colours <- c(wes_palettes$GrandBudapest1,wes_palettes$GrandBudapest2)


r = ggplot(na.omit(data),aes(x=Day, y=`NrOfShortBars/Segment`, fill=Category)) + 
  geom_boxplot(position =  position_dodge2(width = 0.75, preserve = "single"))+  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  scale_fill_manual(values=colours[c(1,6)])+
  xlab("Days since treatment")+ylab("Short bars (per segment)") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5), alpha = 1) +
  ggtitle("Tortuosity")+ylim(0.1,0.25)

r + #stat_compare_means(aes(group = Category), label = "p.format", label.y = 0.22, size=6)+
   theme(
    plot.title = element_text(size=50, face="bold",hjust = 0.5),
    axis.title.x = element_text(size=22),
    axis.title.y = element_text(size=22),
    axis.text=element_text(size=24),
    legend.position="top",
    legend.title = element_blank(),
    legend.text = element_text(size = 20)
  )

#### Tortuosity test (we don't divide by the number of segments)

r = ggplot(na.omit(data),aes(x=Day, y=`NrOfShortBars`, fill=Category)) + 
  geom_boxplot(position =  position_dodge2(width = 0.75, preserve = "single"))+  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  scale_fill_manual(values=colours[c(1,6)])+
  xlab("Days since treatment")+ylab("Short bars") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5), alpha = 1) +
  ggtitle("Tortuosity")

r + stat_compare_means(aes(group = Category), label = "p.format", label.y = 0.22, size=6)+
  theme(
    plot.title = element_text(size=50, face="bold",hjust = 0.5),
    axis.title.x = element_text(size=22),
    axis.title.y = element_text(size=22),
    axis.text=element_text(size=24),
    legend.position="top",
    legend.title = element_blank(),
    legend.text = element_text(size = 20)
  )

###

x = data$`NrOfShortBars/Segment`[data$Day=="7" & data$Category=="Control"]
y = data$`NrOfShortBars/Segment`[data$Day=="7" & data$Category=="Treated"]
wilcox.test(x,y,paired=FALSE)

x = data$`NrOfShortBars/Segment`[data$Day=="1" & data$Category=="Control"]
y = data$`NrOfShortBars/Segment`[data$Day=="1" & data$Category=="Treated"]
wilcox.test(x,y,paired=FALSE)

x = data$`NrOfShortBars/Segment`[data$Day=="3" & data$Category=="Control"]
y = data$`NrOfShortBars/Segment`[data$Day=="3" & data$Category=="Treated"]
wilcox.test(x,y,paired=FALSE)

x = data$`NrOfShortBars/Segment`[data$Day=="14" & data$Category=="Control"]
y = data$`NrOfShortBars/Segment`[data$Day=="14" & data$Category=="Treated"]
wilcox.test(x,y,paired=FALSE)


#Dim1 results

plot(data$Day[data$Category=="Treated"], data$NrOfLoops[data$Category=="Treated"])
plot(data$Day[data$Category=="Control"],data$NrOfLoops[data$Category=="Control"])

plot(data$Day[data$Category=="Treated"], data$`NrOfLoops/Segment`[data$Category=="Treated"])
plot(data$Day[data$Category=="Control"],data$`NrOfLoops/Segment`[data$Category=="Control"])

plot(data$`NrOfSegments(Roche)`[data$Category=="Treated"],data$NrOfLoops[data$Category=="Treated"])
plot(data$`NrOfSegments(Roche)`[data$Category=="Control"],data$NrOfLoops[data$Category=="Control"])

cor(data$`NrOfSegments(Roche)`, data$`NrOfLoops`, use = "complete.obs")

cor(data$`NrOfSegments(Roche)`, data$`NrOfLoops/Segment`, use = "complete.obs")


plot(data$`NrOfSegments(Roche)`[data$Category=="Treated"],data$`NrOfLoops/Segment`[data$Category=="Treated"])
plot(data$`NrOfSegments(Roche)`[data$Category=="Control"],data$`NrOfLoops/Segment`[data$Category=="Control"])


plot(data$`Volume(Roche)`[data$Category=="Treated"],data$NrOfLoops[data$Category=="Treated"])
plot(data$`Volume(Roche)`[data$Category=="Control"],data$NrOfLoops[data$Category=="Control"])

cor(data$`Volume(Roche)`, data$`NrOfLoops/Segment`, use = "complete.obs")

#levels(data$Category)
#data$Category <- ordered(data$Category,
levels = c("Control", "Treated"))

data %>%
  group_by(Day, Category) %>%
  summarize(
    count = n(),
    mean = mean(`NrOfLoops/Segment`, na.rm = TRUE),
    sd = sd(`NrOfLoops/Segment`, na.rm = TRUE),
    median = median(`NrOfLoops/Segment`, na.rm = TRUE),
    IQR = IQR(`NrOfLoops/Segment`, na.rm = TRUE)
  )

#ggplot(data)+ geom_boxplot(aes(x = Day, y = `NrOfLoops/Segment`, group = "Category")



ggplot(na.omit(data), aes(x=Day, y=`NrOfLoops/Segment`, fill=Category)) + 
  geom_boxplot() + facet_wrap(~Category) 

ggplot(na.omit(data), aes(x=Day, y=`NrOfLoops/Segment`, fill=Category)) + 
  geom_boxplot() + facet_wrap(~Day, scale="free")

p = ggplot(na.omit(data), aes(x=Day, y=`NrOfLoops/Segment`, fill=Category)) + 
  geom_boxplot(position =  position_dodge2(width = 0.75, preserve = "single"))+  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  scale_fill_manual(values=colours[c(1,6)])+xlab("Days since treatment")+ylab("Bars (per segment)")+ geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5), alpha = 1) +
  ggtitle("Loops")+ylim(0.25,0.35)

p + #stat_compare_means(aes(group = Category), label = "p.format", label.y = 0.35, size=5)+
  theme(
    plot.title = element_text(size=50, face="bold",hjust = 0.5),
    axis.title.x = element_text(size=22),
    axis.title.y = element_text(size=22),
    axis.text=element_text(size=24),
    legend.position="top",
    legend.title = element_blank(),
    legend.text = element_text(size = 20)
  )



res <- wilcox.test(data$`NrOfLoops/Segment`[data$Day=="7"]~ data$Category,alternative="g")

x = data$`NrOfLoops/Segment`[data$Day=="7" & data$Category=="Control"]
y = data$`NrOfLoops/Segment`[data$Day=="7" & data$Category=="Treated"]
wilcox.test(x,y,paired=FALSE)

x = data$`NrOfLoops/Segment`[data$Day=="1" & data$Category=="Control"]
y = data$`NrOfLoops/Segment`[data$Day=="1" & data$Category=="Treated"]
wilcox.test(x,y,paired=FALSE)

x = data$`NrOfLoops/Segment`[data$Day=="3" & data$Category=="Control"]
y = data$`NrOfLoops/Segment`[data$Day=="3" & data$Category=="Treated"]
wilcox.test(x,y,paired=FALSE)

x = data$`NrOfLoops/Segment`[data$Day=="14" & data$Category=="Control"]
y = data$`NrOfLoops/Segment`[data$Day=="14" & data$Category=="Treated"]
wilcox.test(x,y,paired=FALSE)


# Dim2 results

plot(data$`Volume(Roche)`[data$Category=="Treated"],data$MedianPersistenceDim2[data$Category=="Treated"])
plot(data$`Volume(Roche)`[data$Category=="Control"],data$MedianPersistenceDim2[data$Category=="Control"])

plot(data$`NecrorticVolume(Roche)`[data$Category=="Treated"],data$MedianPersistenceDim2[data$Category=="Treated"])
plot(data$`NecrorticVolume(Roche)`[data$Category=="Control"],data$MedianPersistenceDim2[data$Category=="Control"])

plot(data$`VitalVolume(Roche)`[data$Category=="Treated"],data$MedianPersistenceDim2[data$Category=="Treated"])
plot(data$`VitalVolume(Roche)`[data$Category=="Control"],data$MedianPersistenceDim2[data$Category=="Control"])


cor(data$`Volume(Roche)`[data$Category=="Control"], data$MedianPersistenceDim2[data$Category=="Control"])
cor(data$`NecrorticVolume(Roche)`[data$Category=="Control"], data$`NrOfLoops/Segment`[data$Category=="Control"])
cor(data$`VitalVolume(Roche)`[data$Category=="Control"], data$`NrOfLoops/Segment`[data$Category=="Control"])

cor(data$MedianPersistenceDim2, data$`NrOfLoops/Segment`, use = "complete.obs")
cor(data$`NrOfShortBars/Segment`, data$`NrOfLoops/Segment`, use = "complete.obs")
cor(data$`NrOfShortBars/Segment`, data$MedianPersistenceDim2, use = "complete.obs")

ggplot(data, aes(Day, NrOfLoops,colour=Category)) #+ geom_line() + geom_point()


q = ggplot(data,aes(x=Day, y=`MedianPersistenceDim2`, fill=Category)) + 
  geom_boxplot(position =  position_dodge2(width = 0.75, preserve = "single"))+  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  scale_fill_manual(values=colours[c(1,6)])+xlab("Days since treatment")+ylab("Median persistence") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5), alpha = 1) +
  ggtitle("Voids")+ylim(0.01,0.015)

q + #stat_compare_means(aes(group = Category), label = "p.format", label.y = 0.0145, size=5)+
  theme(
    plot.title = element_text(size=50, face="bold",hjust = 0.5),
    axis.title.x = element_text(size=22),
    axis.title.y = element_text(size=22),
    axis.text=element_text(size=24),
    legend.position="top",
    legend.title = element_blank(),
    legend.text = element_text(size = 20)
  )




x = data$MedianPersistenceDim2[data$Day=="7" & data$Category=="Control"]
y = data$MedianPersistenceDim2[data$Day=="7" & data$Category=="Treated"]
wilcox.test(x,y,paired=FALSE,exact=FALSE)

x = data$MedianPersistenceDim2[data$Day=="1" & data$Category=="Control"]
y = data$MedianPersistenceDim2[data$Day=="1" & data$Category=="Treated"]
wilcox.test(x,y,paired=FALSE,exact=FALSE)

x = data$MedianPersistenceDim2[data$Day=="3" & data$Category=="Control"]
y = data$MedianPersistenceDim2[data$Day=="3" & data$Category=="Treated"]
wilcox.test(x,y,paired=FALSE,exact=FALSE)

x = data$MedianPersistenceDim2[data$Day=="14" & data$Category=="Control"]
y = data$MedianPersistenceDim2[data$Day=="14" & data$Category=="Treated"]
wilcox.test(x,y,paired=FALSE,exact=FALSE)



# volume




t = ggplot(data,aes(x=Day, y=`Volume(Roche)`, fill=Category)) + 
  geom_boxplot(position =  position_dodge2(width = 0.75, preserve = "single"))+  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  scale_fill_manual(values=colours[c(1,6)])+xlab("Days since treatment")+ylab("Bars (per segment)")+ geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5), alpha = 1) +
  xlab("Days since treatment")+ylab("Volume [mm^3]") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5), alpha = 1) +
  ggtitle("Volume")+ ylim(0, 100)

t + stat_compare_means(aes(group = Category), label = "p.format", label.y = 2, size=8)+ theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=16),
  axis.title.y = element_text(size=16),
  axis.text=element_text(size=18),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 22)
)


u = ggplot(data,aes(x=Day, y=`Radius`, fill=Category)) + 
  geom_boxplot()+  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  scale_fill_manual(values=colours[c(1,6)])+
  xlab("Days since treatment")+ylab("Radius") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5), alpha = 1) +
  ggtitle("Radius")+ ylim(450, 1000)

u + stat_compare_means(aes(group = Category), label = "p.format", label.y = 500, size=8)+ theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=16),
  axis.title.y = element_text(size=16),
  axis.text=element_text(size=18),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 22)
)
