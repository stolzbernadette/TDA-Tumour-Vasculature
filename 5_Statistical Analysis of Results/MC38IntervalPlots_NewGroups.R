summarySE <- function(data=NULL, measurevar, groupvars=NULL, na.rm=FALSE,
                      conf.interval=.95, .drop=TRUE) {
  library(plyr)
  
  # New version of length which can handle NA's: if na.rm==T, don't count them
  length2 <- function (x, na.rm=FALSE) {
    if (na.rm) sum(!is.na(x))
    else       length(x)
  }
  
  # This does the summary. For each group's data frame, return a vector with
  # N, mean, and sd
  datac <- ddply(data, groupvars, .drop=.drop,
                 .fun = function(xx, col) {
                   c(N    = length2(xx[[col]], na.rm=na.rm),
                     mean = mean   (xx[[col]], na.rm=na.rm),
                     sd   = sd     (xx[[col]], na.rm=na.rm)
                   )
                 },
                 measurevar
  )
  
  # Rename the "mean" column    
  datac <- rename(datac, c("mean" = measurevar))
  
  datac$se <- datac$sd / sqrt(datac$N)  # Calculate standard error of the mean
  
  # Confidence interval multiplier for standard error
  # Calculate t-statistic for confidence interval: 
  # e.g., if conf.interval is .95, use .975 (above/below), and use df=N-1
  ciMult <- qt(conf.interval/2 + .5, datac$N-1)
  datac$ci <- datac$se * ciMult
  
  return(datac)
}







## Interval Plots

library(ggplot2)
library(wesanderson)

setwd("/Users/user/Desktop/Vasculature Project/Analysis in R")
data <- read.csv("MC38Data.csv", header=T, dec=".",sep=",",check.names = F)
data


colours <- c(wes_palettes$GrandBudapest1,wes_palettes$GrandBudapest2)

split1_data <- droplevels(subset(data,data$Category %in% c("Control","DC101","Dll4")))
split2_data <- droplevels(subset(data,data$Category %in% c("Control","IR","FIR")))



#Dim 1 Interval 1

tgcDim1_1 <- summarySE(na.omit(split1_data), measurevar="NrOfLoopsI1Normalised/Segment", groupvars=c("Category","Day"))

names(tgcDim1_1)[names(tgcDim1_1) == "NrOfLoopsI1Normalised/Segment"] <- "Dim1"

tgcDim1_2 <- summarySE(na.omit(split2_data), measurevar="NrOfLoopsI1Normalised/Segment", groupvars=c("Category","Day"))

names(tgcDim1_2)[names(tgcDim1_2) == "NrOfLoopsI1Normalised/Segment"] <- "Dim1"

r1 = ggplot(tgcDim1_1, aes(x=Day, y=Dim1, colour=Category)) + 
  geom_errorbar(aes(ymin=Dim1-se, ymax=Dim1+se), width=.2,size = 1.5) +
  geom_line(size = 1.5) +
  geom_point() + scale_colour_manual(values=colours[c(1,2,5)])+
  xlab("Days since treatment")+ylab("Bars (per segment)") + ylim(0,16)+
  ggtitle("Loops Interval 1")

r1+theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)

r2 = ggplot(tgcDim1_2, aes(x=Day, y=Dim1, colour=Category)) + 
  geom_errorbar(aes(ymin=Dim1-se, ymax=Dim1+se), width=.2,size = 1.5) +
  geom_line(size = 1.5) + ylim(0,16)+
  geom_point() + scale_colour_manual(values=colours[c(1,3,8)])+
  xlab("Days since treatment")+ylab("Bars (per segment)")+ggtitle("Loops Interval 1")

r2+theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)


#Dim 1 Interval 2

tgcDim1_1_2 <- summarySE(na.omit(split1_data), measurevar="NrOfLoopsI2Normalised/Segment", groupvars=c("Category","Day"))

names(tgcDim1_1_2)[names(tgcDim1_1_2) == "NrOfLoopsI2Normalised/Segment"] <- "Dim1"

tgcDim1_2_2 <- summarySE(na.omit(split2_data), measurevar="NrOfLoopsI2Normalised/Segment", groupvars=c("Category","Day"))

names(tgcDim1_2_2)[names(tgcDim1_2_2) == "NrOfLoopsI2Normalised/Segment"] <- "Dim1"

r1 = ggplot(tgcDim1_1_2, aes(x=Day, y=Dim1, colour=Category)) + 
  geom_errorbar(aes(ymin=Dim1-se, ymax=Dim1+se), width=.2,size = 1.5) +
  geom_line(size = 1.5) + ylim(0,16)+
  geom_point() + scale_colour_manual(values=colours[c(1,2,5)])+
  xlab("Days since treatment")+ylab("Bars (per segment)") +
  ggtitle("Loops Interval 2")

r1+theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)

r2 = ggplot(tgcDim1_2_2, aes(x=Day, y=Dim1, colour=Category)) + 
  geom_errorbar(aes(ymin=Dim1-se, ymax=Dim1+se), width=.2,size = 1.5) +
  geom_line(size = 1.5) + ylim(0,16)+
  geom_point() + scale_colour_manual(values=colours[c(1,3,8)])+
  xlab("Days since treatment")+ylab("Bars (per segment)")+ggtitle("Loops Interval 2")

r2+theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)


#Dim 1 Interval 3

tgcDim1_1_3 <- summarySE(na.omit(split1_data), measurevar="NrOfLoopsI3Normalised/Segment", groupvars=c("Category","Day"))

names(tgcDim1_1_3)[names(tgcDim1_1_3) == "NrOfLoopsI3Normalised/Segment"] <- "Dim1"

tgcDim1_2_3 <- summarySE(na.omit(split2_data), measurevar="NrOfLoopsI3Normalised/Segment", groupvars=c("Category","Day"))

names(tgcDim1_2_3)[names(tgcDim1_2_3) == "NrOfLoopsI3Normalised/Segment"] <- "Dim1"

r1 = ggplot(tgcDim1_1_3, aes(x=Day, y=Dim1, colour=Category)) + 
  geom_errorbar(aes(ymin=Dim1-se, ymax=Dim1+se), width=.2,size = 1.5) +
  geom_line(size = 1.5) + ylim(0,16)+
  geom_point() + scale_colour_manual(values=colours[c(1,2,5)])+
  xlab("Days since treatment")+ylab("Bars (per segment)") +
  ggtitle("Loops Interval 3")

r1+theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)

r2 = ggplot(tgcDim1_2_3, aes(x=Day, y=Dim1, colour=Category)) + 
  geom_errorbar(aes(ymin=Dim1-se, ymax=Dim1+se), width=.2,size = 1.5) +
  geom_line(size = 1.5) + ylim(0,16)+
  geom_point() + scale_colour_manual(values=colours[c(1,3,8)])+
  xlab("Days since treatment")+ylab("Bars (per segment)")+ggtitle("Loops Interval 3")

r2+theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)


#Dim 1 Interval 4

tgcDim1_1_4 <- summarySE(na.omit(split1_data), measurevar="NrOfLoopsI4Normalised/Segment", groupvars=c("Category","Day"))

names(tgcDim1_1_4)[names(tgcDim1_1_4) == "NrOfLoopsI4Normalised/Segment"] <- "Dim1"

tgcDim1_2_4 <- summarySE(na.omit(split2_data), measurevar="NrOfLoopsI4Normalised/Segment", groupvars=c("Category","Day"))

names(tgcDim1_2_4)[names(tgcDim1_2_4) == "NrOfLoopsI4Normalised/Segment"] <- "Dim1"

r1 = ggplot(tgcDim1_1_4, aes(x=Day, y=Dim1, colour=Category)) + 
  geom_errorbar(aes(ymin=Dim1-se, ymax=Dim1+se), width=.2,size = 1.5) +
  geom_line(size = 1.5) + ylim(0,16)+
  geom_point() + scale_colour_manual(values=colours[c(1,2,5)])+
  xlab("Days since treatment")+ylab("Bars (per segment)") +
  ggtitle("Loops Interval 4")

r1+theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)

r2 = ggplot(tgcDim1_2_4, aes(x=Day, y=Dim1, colour=Category)) + 
  geom_errorbar(aes(ymin=Dim1-se, ymax=Dim1+se), width=.2,size = 1.5) +
  geom_line(size = 1.5) + ylim(0,16)+
  geom_point() + scale_colour_manual(values=colours[c(1,3,8)])+
  xlab("Days since treatment")+ylab("Bars (per segment)")+ggtitle("Loops Interval 4")

r2+theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)


# Dim 1 Interval 5

tgcDim1_1_5 <- summarySE(na.omit(split1_data), measurevar="NrOfLoopsI5Normalised/Segment", groupvars=c("Category","Day"))

names(tgcDim1_1_5)[names(tgcDim1_1_5) == "NrOfLoopsI5Normalised/Segment"] <- "Dim1"

tgcDim1_2_5 <- summarySE(na.omit(split2_data), measurevar="NrOfLoopsI5Normalised/Segment", groupvars=c("Category","Day"))

names(tgcDim1_2_5)[names(tgcDim1_2_5) == "NrOfLoopsI5Normalised/Segment"] <- "Dim1"

r1 = ggplot(tgcDim1_1_5, aes(x=Day, y=Dim1, colour=Category)) + 
  geom_errorbar(aes(ymin=Dim1-se, ymax=Dim1+se), width=.2,size = 1.5) +
  geom_line(size = 1.5) + ylim(0,16)+
  geom_point() + scale_colour_manual(values=colours[c(1,2,5)])+
  xlab("Days since treatment")+ylab("Bars (per segment)") +
  ggtitle("Loops Interval 5")

r1+theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)

r2 = ggplot(tgcDim1_2_5, aes(x=Day, y=Dim1, colour=Category)) + 
  geom_errorbar(aes(ymin=Dim1-se, ymax=Dim1+se), width=.2,size = 1.5) +
  geom_line(size = 1.5)+ ylim(0,16)+
  geom_point() + scale_colour_manual(values=colours[c(1,3,8)])+
  xlab("Days since treatment")+ylab("Bars (per segment)")+ggtitle("Loops Interval 5")

r2+theme(
  plot.title = element_text(size=45, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)



