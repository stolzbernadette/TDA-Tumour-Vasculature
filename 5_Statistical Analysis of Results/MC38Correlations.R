## MC38 Vessel Data Analysis

#install.packages("ggplot2")
#install.packages("tidyverse")

library(ggplot2)
library(tidyverse)
library(dplyr)
library(ggpubr)
library(gapminder)
library(wesanderson)
library("Hmisc")
library(corrplot)
library(gplots) 



setwd("/Users/user/Desktop/Vasculature Project/Analysis in R")
data <- read.csv("MC38Data.csv", header=T, dec=".",sep=",",check.names = F)
data

colours <- c(wes_palettes$GrandBudapest1,wes_palettes$GrandBudapest2)

data$Day <- as.factor(data$Day)

correlation_data <- data.frame(data$`NrOfSegments(Russ)Normalised`,
data$`NrOfBranchingPoints(Russ)Normalised`,
data$`NrOfLoopsNormalised`,
data$`NrOfLoops/SegmentNormalised`,
data$`NrOfShortBars/SegmentNormalised`,
data$`MedianPersistenceDim2Normalised`,
data$`RadiusNormalised`,
data$`AvgDiameterNormalised`,
data$`MaxDiameterNormalised`,	
data$`AvgLengthNormalised`,
data$`MaxLengthNormalised`,
data$`AvgClrNormalised`,
data$`AvgSOAMNormalised`,	
data$`LengthDiamRatioNormalised`)

colnames(correlation_data) <- c("Segments","Branching points","Loops","Loops per segment","Short bars","Voids","Radius","Average diameter","Maximal diameter","Average length",
                                "Maximal length", "Average clr", "Average SOAM", "Length diameter ratio")

mydata.rcorr = rcorr(as.matrix(correlation_data),type=c("pearson"))
mydata.rcorr
mydata.coeff = mydata.rcorr$r
mydata.p = mydata.rcorr$P

corrplot(mydata.rcorr$r)

tda_measures<-c("Loops","Loops per segment","Short bars","Voids")
#initiate cols with all black
cols <- rep('black', nrow(mydata.rcorr$r))
#turn red the specified rows in tf
cols[row.names(mydata.rcorr$r) %in% tda_measures] <- 'orange'

palette = colorRampPalette(c("blue", "white", "red")) (9)
heatmap.2(x = mydata.rcorr$r, col = palette, symm = TRUE,margins=c(10,10),density.info="none",trace="none", colRow = cols, colCol = cols)

#(complete linkage method with Euclidean distance measure)


