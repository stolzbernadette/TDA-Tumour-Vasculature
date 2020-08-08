
library(kSamples)


setwd("/Users/user/Desktop/Vasculature Project/Analysis in R")
data <- read.csv("RocheLoopsStarts.csv", header=T, dec=".",sep=",",check.names = F)
data


## Day 1

t_1_1 = data[2:nrow(data),2]
t_1_1<-as.numeric(t_1_1[!is.na(t_1_1)])

hist(t_1_1)

t_1_2 = data[2:nrow(data),3]
t_1_2<-as.numeric(t_1_2[!is.na(t_1_2)])

hist(t_1_2)

t_1_3 = data[2:nrow(data),4]
t_1_3<-as.numeric(t_1_3[!is.na(t_1_3)])

t_1_4 = data[2:nrow(data),5]
t_1_4<-as.numeric(t_1_4[!is.na(t_1_4)])

t_1_5 = data[2:nrow(data),6]
t_1_5<-as.numeric(t_1_5[!is.na(t_1_5)])

ad.test(t_1_1,t_1_2,t_1_3,t_1_4,t_1_5)


c_1_1 = data[2:nrow(data),15]
c_1_1<-as.numeric(c_1_1[!is.na(c_1_1)])

c_1_2 = data[2:nrow(data),16]
c_1_2<-as.numeric(c_1_2[!is.na(c_1_2)])

c_1_3 = data[2:nrow(data),17]
c_1_3<-as.numeric(c_1_3[!is.na(c_1_3)])

c_1_4 = data[2:nrow(data),18]
c_1_4<-as.numeric(c_1_4[!is.na(c_1_4)])

c_1_5 = data[2:nrow(data),19]
c_1_5<-as.numeric(c_1_5[!is.na(c_1_5)])

ad.test(c_1_1,c_1_2,c_1_3,c_1_4,c_1_5)

ad.test(t_1_1,t_1_2,t_1_3,t_1_4,t_1_5,c_1_1,c_1_2,c_1_3,c_1_4,c_1_5)

ad.test.combined()

## Day 3

t_3_1 = data[2:nrow(data),7]
t_3_1<-as.numeric(t_3_1[!is.na(t_3_1)])

hist(t_3_1,breaks=200)

t_3_2 = data[2:nrow(data),8]
t_3_2<-as.numeric(t_3_2[!is.na(t_3_2)])

t_3_3 = data[2:nrow(data),9]
t_3_3<-as.numeric(t_3_3[!is.na(t_3_3)])

hist(t_3_3,breaks=200)

t_3_4 = data[2:nrow(data),10]
t_3_4<-as.numeric(t_3_4[!is.na(t_3_4)])

ad.test(t_3_1,t_3_2,t_3_3,t_3_4)


c_3_1 = data[2:nrow(data),20]
c_3_1<-as.numeric(c_3_1[!is.na(c_3_1)])

c_3_2 = data[2:nrow(data),22]
c_3_2<-as.numeric(c_3_2[!is.na(c_3_2)])

c_3_3 = data[2:nrow(data),24]
c_3_3<-as.numeric(c_3_3[!is.na(c_3_3)])

c_3_4 = data[2:nrow(data),26]
c_3_4<-as.numeric(c_3_4[!is.na(c_3_4)])

c_3_5 = data[2:nrow(data),28]
c_3_5<-as.numeric(c_3_5[!is.na(c_3_5)])

ad.test(c_3_1,c_3_2,c_3_3,c_3_4,c_3_5)

ad.test(c_3_1,c_3_2,c_3_3,c_3_4,c_3_5,t_3_1,t_3_2,t_3_3,t_3_4)

## Day 7

t_7_1 = data[2:nrow(data),11]
t_7_1<-as.numeric(t_7_1[!is.na(t_7_1)])

t_7_2 = data[2:nrow(data),12]
t_7_2<-as.numeric(t_7_2[!is.na(t_7_2)])

ad.test(t_7_1,t_7_2)

c_7_1 = data[2:nrow(data),21]
c_7_1<-as.numeric(c_7_1[!is.na(c_7_1)])

c_7_2 = data[2:nrow(data),23]
c_7_2<-as.numeric(c_7_2[!is.na(c_7_2)])

c_7_3 = data[2:nrow(data),25]
c_7_3<-as.numeric(c_7_3[!is.na(c_7_3)])

c_7_4 = data[2:nrow(data),27]
c_7_4<-as.numeric(c_7_4[!is.na(c_7_4)])

c_7_5 = data[2:nrow(data),29]
c_7_5<-as.numeric(c_7_5[!is.na(c_7_5)])

ad.test(c_7_1,c_7_2,c_7_3,c_7_4,c_7_5)

ad.test(c_7_1,c_7_2,c_7_3,c_7_4,c_7_5,t_7_1,t_7_2)


## Day 14

t_14_1 = data[2:nrow(data),13]
t_14_1<-as.numeric(t_14_1[!is.na(t_14_1)])

c_14_1 = data[2:nrow(data),30]
c_14_1<-as.numeric(c_14_1[!is.na(c_14_1)])

c_14_2 = data[2:nrow(data),31]
c_14_2<-as.numeric(c_14_2[!is.na(c_14_2)])

c_14_3 = data[2:nrow(data),32]
c_14_3<-as.numeric(c_14_3[!is.na(c_14_3)])

ad.test(c_14_1,c_14_2,c_14_3)
ad.test(c_14_1,c_14_2,c_14_3,t_14_1)


