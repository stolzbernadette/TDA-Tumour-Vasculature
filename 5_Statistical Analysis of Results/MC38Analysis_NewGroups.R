## MC38 Vessel Data Analysis

#install.packages("ggplot2")
#install.packages("tidyverse")

library(ggplot2)
library(tidyverse)
library(dplyr)
library(ggpubr)
library(gapminder)
library(wesanderson)

setwd("/Users/user/Desktop/Vasculature Project/Analysis in R")
data <- read.csv("MC38Data.csv", header=T, dec=".",sep=",",check.names = F)
data

data$Day <- as.factor(data$Day)


#Dim0 results


colours <- c(wes_palettes$GrandBudapest1,wes_palettes$GrandBudapest2)

new_data <- droplevels(subset(data,data$Day %in% c(1,2,3,4,5,6,7)))



split1_data <- droplevels(subset(data,data$Category %in% c("Control","DC101","Dll4")))
split12_data <- droplevels(subset(split1_data,split1_data$Day %in% c(1,2,3,4,5,6,7)))

colours <- c(wes_palettes$GrandBudapest1,wes_palettes$GrandBudapest2)



r1 = ggplot(na.omit(split12_data),aes(x=Day, y=`NrOfShortBars/SegmentNormalised`, fill=Category)) + 
  geom_boxplot(position =  position_dodge2(width = 0.75, preserve = "single"))+  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  scale_fill_manual(values=colours[c(1,2,5)])+
  xlab("Days since treatment")+ylab("Short bars (per segment)") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5,5.5,6.5,7.5), alpha = 1) +
  ggtitle("Tortuosity")+ylim(0.55,1.2)

r1+theme(
  plot.title = element_text(size=50, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)


rr1 = ggplot(na.omit(split12_data),aes(x=Day, y=`NrOfShortBars/SegmentNormalised`, fill=Category))+
  scale_fill_manual(values=colours[c(1,2,5,3,8)])+
  geom_boxplot(position =  position_dodge2(width = 0., preserve = "single"))+  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  xlab("Days since treatment")+ylab("Short bars (per segment)") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5,5.5,6.5,7.5), alpha = 1) +
  ggtitle("Tortuosity")

rr1+stat_compare_means(aes(group = Category), method="kruskal.test", label = "p.format", label.y = 1.25, size=6)+theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=16),
  axis.title.y = element_text(size=16),
  axis.text=element_text(size=18),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 22)
)



split2_data <- droplevels(subset(data,data$Category %in% c("Control","IR","FIR")))
split22_data <- droplevels(subset(split2_data,split2_data$Day %in% c(1,2,3,4,5,6,7)))


r2 = ggplot(na.omit(split22_data),aes(x=Day, y=`NrOfShortBars/SegmentNormalised`, fill=Category)) + 
  scale_fill_manual(values=colours[c(1,3,8)])+
  geom_boxplot(position =  position_dodge2(width = 0.75, preserve = "single")) +  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  xlab("Days since treatment")+ylab("Short bars (per segment)") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5,5.5,6.5,7.5), alpha = 1) +
  ggtitle("Tortuosity")

r2+theme(
  plot.title = element_text(size=50, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)+scale_y_continuous(limits=c(0.5, 1.7))



rr2 = ggplot(na.omit(split22_data),aes(x=Day, y=`NrOfShortBars/SegmentNormalised`, fill=Category)) + 
  scale_fill_manual(values=colours[c(1,3,8)])+
  geom_boxplot(position =  position_dodge2(width = 0.75, preserve = "single")) +  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  xlab("Days since treatment")+ylab("Short bars (per segment)") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5,5.5,6.5,7.5), alpha = 1) +
  ggtitle("Tortuosity")

rr2+stat_compare_means(aes(group = Category), method="kruskal.test", label = "p.format", label.y = 1.7, size=5)+theme(
  plot.title = element_text(size=50, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)+scale_y_continuous(limits=c(0.5, 1.7))



#Dim1 results


split3_data <- droplevels(subset(data,data$Category %in% c("Control","IR","FIR")))
split32_data <- droplevels(subset(split3_data,split3_data$Day %in% c(1,2,3,4,5,6,7)))



p1 = ggplot(na.omit(split32_data), aes(x=Day, y=`NrOfLoops/SegmentNormalised`, fill=Category)) + 
  scale_fill_manual(values=colours[c(1,3,8)])+
  geom_boxplot(position =  position_dodge2(width = 0.75, preserve = "single"))+ #+ geom_point(position=position_jitterdodge(),alpha=0.5) 
  xlab("Days since treatment")+ylab("Bars (per segment)")+ geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5,5.5,6.5,7.5), alpha = 1) +
  ggtitle("Loops")


p1 + theme(
  plot.title = element_text(size=50, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)#+scale_y_continuous(limits=c(0, 5))

pp1 = ggplot(na.omit(split32_data),aes(x=Day, y=`NrOfLoops/SegmentNormalised`, fill=Category))+
  scale_fill_manual(values=colours[c(1,3,8)])+
  geom_boxplot(position =  position_dodge2(width = 0., preserve = "single"))+  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  xlab("Days since treatment")+ylab("Bars (per segment)") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5,5.5,6.5,7.5), alpha = 1) +
  ggtitle("Loops")

pp1+stat_compare_means(aes(group = Category), method="kruskal.test", label = "p.format", label.y = 5, size=6)+theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=16),
  axis.title.y = element_text(size=16),
  axis.text=element_text(size=18),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 22)
)


split4_data <- droplevels(subset(data,data$Category %in% c("Control","DC101","Dll4")))
split42_data <- droplevels(subset(split4_data,split4_data$Day %in% c(1,2,3,4,5,6,7)))



p2 = ggplot(na.omit(split42_data), aes(x=Day, y=`NrOfLoops/SegmentNormalised`, fill=Category)) + 
  scale_fill_manual(values=colours[c(1,2,5)])+
  geom_boxplot(position =  position_dodge2(width = 0.75, preserve = "single"))+ #+ geom_point(position=position_jitterdodge(),alpha=0.5) 
  xlab("Days since treatment")+ylab("Bars (per segment)")+ geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5,5.5,6.5,7.5), alpha = 1) +
  ggtitle("Loops")+ylim(0,3.25)


p2 + theme(
  plot.title = element_text(size=50, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)#+scale_y_continuous(limits=c(0.5, 4.3))



pp2 = ggplot(na.omit(split42_data), aes(x=Day, y=`NrOfLoops/SegmentNormalised`, fill=Category)) + 
  scale_fill_manual(values=colours[c(1,2,5)])+
  geom_boxplot(position =  position_dodge2(width = 0.75, preserve = "single"))+ #+ geom_point(position=position_jitterdodge(),alpha=0.5) 
  xlab("Days since treatment")+ylab("Bars (per segment)")+ geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5,5.5,6.5,7.5), alpha = 1) +
  ggtitle("Loops")


pp2+stat_compare_means(aes(group = Category), method="kruskal.test", label = "p.format", label.y = 3.25, size=6) + theme(
  plot.title = element_text(size=50, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)#+scale_y_continuous(limits=c(0.5, 4.3))



# we check the standard measures


split3_data <- droplevels(subset(data,data$Category %in% c("Control","Dll4","DC101")))
split32_data <- droplevels(subset(split3_data,split3_data$Day %in% c(1,2,3,4)))


u = ggplot(split32_data,aes(x=Day, y=`NrOfSegments(Russ)Normalised`, fill=Category)) + 
  scale_fill_manual(values=colours[c(1,2,5,3,8)])+
  geom_boxplot(position =  position_dodge2(width = 0., preserve = "single"))+  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  xlab("Days since treatment")+ylab("Number of vessel segments") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5,5.5,6.5,7.5), alpha = 1) +
  ggtitle("Vessel segments")


u + stat_compare_means(aes(group = Category), label = "p.format", label.y = 12.5, size=6)+ theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=16),
  axis.title.y = element_text(size=16),
  axis.text=element_text(size=18),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 22)
)


v = ggplot(split32_data,aes(x=Day, y=`NrOfBranchingPoints(Russ)Normalised`, fill=Category)) + 
  scale_fill_manual(values=colours[c(1,2,5,3,8)])+
  geom_boxplot(position =  position_dodge2(width = 0., preserve = "single"))+  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  xlab("Days since treatment")+ylab("Number of branching points") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5,5.5,6.5,7.5), alpha = 1) +
  ggtitle("Branching points")


v + stat_compare_means(aes(group = Category), label = "p.format", label.y = 10, size=6)+ theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=16),
  axis.title.y = element_text(size=16),
  axis.text=element_text(size=18),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 22)
)


w = ggplot(split32_data,aes(x=Day, y=`AvgDiameterNormalised`, fill=Category)) + 
  scale_fill_manual(values=colours[c(1,2,5,3,8)])+
  geom_boxplot(position =  position_dodge2(width = 0., preserve = "single"))+  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  xlab("Days since treatment")+ylab("Average diameter") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5,5.5,6.5,7.5), alpha = 1) +
  ggtitle("Average diameter")+ylim(0.8,1.7)


w + stat_compare_means(aes(group = Category), label = "p.format", label.y = 1.6, size=6)+ theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=16),
  axis.title.y = element_text(size=16),
  axis.text=element_text(size=18),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 22)
)


x = ggplot(split32_data,aes(x=Day, y=`MaxDiameterNormalised`, fill=Category)) + 
  scale_fill_manual(values=colours[c(1,2,5,3,8)])+
  geom_boxplot(position =  position_dodge2(width = 0., preserve = "single"))+  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  xlab("Days since treatment")+ylab("Maximal diameter") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5,5.5,6.5,7.5), alpha = 1) +
  ggtitle("Maximal diameter")


x + stat_compare_means(aes(group = Category), label = "p.format", label.y = 3, size=6)+ theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=16),
  axis.title.y = element_text(size=16),
  axis.text=element_text(size=18),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 22)
)


y = ggplot(split32_data,aes(x=Day, y=`AvgLengthNormalised`, fill=Category)) + 
  scale_fill_manual(values=colours[c(1,2,5,3,8)])+
  geom_boxplot(position =  position_dodge2(width = 0., preserve = "single"))+  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  xlab("Days since treatment")+ylab("Average length") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5,5.5,6.5,7.5), alpha = 1) +
  ggtitle("Average vessel length")+ylim(0.85,1.45)


y + stat_compare_means(aes(group = Category), label = "p.format", label.y = 1.42, size=6)+ theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=16),
  axis.title.y = element_text(size=16),
  axis.text=element_text(size=18),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 22)
)


y = ggplot(split32_data,aes(x=Day, y=`MaxLengthNormalised`, fill=Category)) + 
  scale_fill_manual(values=colours[c(1,2,5,3,8)])+
  geom_boxplot(position =  position_dodge2(width = 0., preserve = "single"))+  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  xlab("Days since treatment")+ylab("Maximal length") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5,5.5,6.5,7.5), alpha = 1) +
  ggtitle("Maximal vessel length")+ylim(0.5,2.5)


y + stat_compare_means(aes(group = Category), label = "p.format", label.y = 2.4, size=6)+ theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=16),
  axis.title.y = element_text(size=16),
  axis.text=element_text(size=18),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 22)
)


z = ggplot(split32_data,aes(x=Day, y=`AvgClrNormalised`, fill=Category)) + 
  scale_fill_manual(values=colours[c(1,2,5,3,8)])+
  geom_boxplot(position =  position_dodge2(width = 0., preserve = "single"))+  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  xlab("Days since treatment")+ylab("Average chord length ratio") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5,5.5,6.5,7.5), alpha = 1) +
  ggtitle("Average tortuosity (CLR)")+ylim(0.95,1.09)


z + stat_compare_means(aes(group = Category), label = "p.format", label.y = 1.08, size=6)+ theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=16),
  axis.title.y = element_text(size=16),
  axis.text=element_text(size=18),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 22)
)

z2 = ggplot(split32_data,aes(x=Day, y=`AvgSOAMNormalised`, fill=Category)) + 
  scale_fill_manual(values=colours[c(1,2,5,3,8)])+
  geom_boxplot(position =  position_dodge2(width = 0., preserve = "single"))+  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  xlab("Days since treatment")+ylab("Average sum of angles metric") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5,5.5,6.5,7.5), alpha = 1) +
  ggtitle("Average tortuosity (SOAM)")+ylim(0.85,1.09)


z2 + stat_compare_means(aes(group = Category), label = "p.format", label.y = 1.07, size=6)+ theme(
  plot.title = element_text(size=43, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=16),
  axis.title.y = element_text(size=16),
  axis.text=element_text(size=18),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 22)
)

z3 = ggplot(split32_data,aes(x=Day, y=`LengthDiamRatioNormalised`, fill=Category)) + 
  scale_fill_manual(values=colours[c(1,2,5,3,8)])+
  geom_boxplot(position =  position_dodge2(width = 0., preserve = "single"))+  #geom_point(position=position_jitterdodge(),alpha=0.5) +
  xlab("Days since treatment")+ylab("Length diameter ratio") + geom_vline(xintercept = c(0.5,1.5, 2.5,3.5,4.5,5.5,6.5,7.5), alpha = 1) +
  ggtitle("Length diameter ratio")+ylim(0.7,1.5)


z3 + stat_compare_means(aes(group = Category), label = "p.format", label.y = 1.4, size=6)+ theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=16),
  axis.title.y = element_text(size=16),
  axis.text=element_text(size=18),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 22)
)
