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
data <- read.csv("RocheDataForR.csv", header=T, dec=".",sep=",",check.names = F)
data

data$Day <- as.factor(data$Day)

correlation_data <- data.frame(data$`NrOfSegments(Russ)`,
                               data$`NrOfBranchingPoints(Russ)`,
                               data$`NrOfSegments(Roche)`,
                               data$`NrOfBranchingPoints(Roche)`,
                               data$`Volume(Roche)`,
                               data$`VitalVolume(Roche)`,
                               data$`NecrorticVolume(Roche)`,
                               data$`NrOfLoops`,
                               data$`NrOfLoops/Segment`,	
                               data$`NrOfShortBars/Segment`,
                               data$`MedianPersistenceDim2`,
                               data$`Radius`)

colnames(correlation_data) <- c("Segments","Branching points","Segments old","Branching points old","Volume","Vital volume","Necrotic volume","Loops","Loops per segment","Short bars","Voids","Radius")

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

palette = colorRampPalette(c("blue", "white", "red")) (11)
heatmap.2(x = mydata.rcorr$r, col = palette, symm = TRUE,margins=c(10,10),density.info="none",trace="none", colRow = cols, colCol = cols)
