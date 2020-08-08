## Gives count, mean, standard deviation, standard error of the mean, and confidence interval (default 95%).
##   data: a data frame.
##   measurevar: the name of a column that contains the variable to be summariezed
##   groupvars: a vector containing names of columns that contain grouping variables
##   na.rm: a boolean that indicates whether to ignore NA's
##   conf.interval: the percent range of the confidence interval (default is 95%)
## http://www.cookbook-r.com/Manipulating_data/Summarizing_data/

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

colours <- c(wes_palettes$GrandBudapest1,wes_palettes$GrandBudapest2)

split1_data <- droplevels(subset(data,data$Category %in% c("Control","DC101","Dll4")))
split2_data <- droplevels(subset(data,data$Category %in% c("Control","IR","FIR")))



#Dim 0

tgcDim0_1 <- summarySE(na.omit(split1_data), measurevar="NrOfShortBars/SegmentNormalised", groupvars=c("Category","Day"))

names(tgcDim0_1)[names(tgcDim0_1) == "NrOfShortBars/SegmentNormalised"] <- "Dim0"

tgcDim0_2 <- summarySE(na.omit(split2_data), measurevar="NrOfShortBars/SegmentNormalised", groupvars=c("Category","Day"))

names(tgcDim0_2)[names(tgcDim0_2) == "NrOfShortBars/SegmentNormalised"] <- "Dim0"



r1 = ggplot(tgcDim0_1, aes(x=Day, y=Dim0, colour=Category)) + 
  geom_errorbar(aes(ymin=Dim0-se, ymax=Dim0+se), width=.2,size = 1.5) +
  geom_line(size = 1.5) +
  geom_point() + scale_colour_manual(values=colours[c(1,2,5)])+
  xlab("Days since treatment")+ylab("Short bars (per segment)") +
  ggtitle("Tortuosity")

r1+theme(
  plot.title = element_text(size=70, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)

r2 = ggplot(tgcDim0_2, aes(x=Day, y=Dim0, colour=Category)) + 
  geom_errorbar(aes(ymin=Dim0-se, ymax=Dim0+se), width=.2,size = 1.5) +
  geom_line(size = 1.5) +
  geom_point() + scale_colour_manual(values=colours[c(1,3,8)])+
  xlab("Days since treatment")+ylab("Short bars (per segment)") +
  ggtitle("Tortuosity")

r2+theme(
  plot.title = element_text(size=70, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)





#Dim1 results

tgcDim1_1 <- summarySE(na.omit(split1_data), measurevar="NrOfLoops/SegmentNormalised", groupvars=c("Category","Day"))

names(tgcDim1_1)[names(tgcDim1_1) == "NrOfLoops/SegmentNormalised"] <- "Dim1"

tgcDim1_2 <- summarySE(na.omit(split2_data), measurevar="NrOfLoops/SegmentNormalised", groupvars=c("Category","Day"))

names(tgcDim1_2)[names(tgcDim1_2) == "NrOfLoops/SegmentNormalised"] <- "Dim1"




p1 = ggplot(tgcDim1_1, aes(x=Day, y=Dim1, colour=Category)) + 
  geom_errorbar(aes(ymin=Dim1-se, ymax=Dim1+se), width=.2,size = 1.5) +
  geom_line(size = 1.5) +
  geom_point() + scale_colour_manual(values=colours[c(1,2,5)])+
  xlab("Days since treatment")+ylab("Bars (per segment)")+ggtitle("Loops")

p1+theme(
  plot.title = element_text(size=70, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)


p2 = ggplot(tgcDim1_2, aes(x=Day, y=Dim1, colour=Category)) + 
  geom_errorbar(aes(ymin=Dim1-se, ymax=Dim1+se), width=.2,size = 1.5) +
  geom_line(size = 1.5) +
  geom_point() + scale_colour_manual(values=colours[c(1,3,8)])+
  xlab("Days since treatment")+ylab("Bars (per segment)")+ggtitle("Loops")

p2+theme(
  plot.title = element_text(size=70, face="bold",hjust = 0.5),
  axis.title.x = element_text(size=22),
  axis.title.y = element_text(size=22),
  axis.text=element_text(size=24),
  legend.position="top",
  legend.title = element_blank(),
  legend.text = element_text(size = 20)
)


