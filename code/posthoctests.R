#post-hoc tests AMF-MV manuscript
setwd("~/Desktop")
data<-read.table("npdata.txt",header=TRUE,sep="\t")

dataN<-subset(data, soiltrt=='ON')
dataO<-subset(data, soiltrt=='O')
data1<-rbind(dataN, dataO)

data.above<-subset(data1, pltpart=='S')
data.below<-subset(data1, pltpart=='R')

mod<-lm(n.~soiltrt, data=data.above)
summary(mod) #ns
mod<-lm(p.~soiltrt, data=data.above)
summary(mod) #ns
mod<-lm(ncontent~soiltrt, data=data.above)
summary(mod) #ns
mod<-lm(pcontent~soiltrt, data=data.above)
summary(mod) #ns

mod<-lm(n.~soiltrt, data=data.below)
summary(mod) #ns
mod<-lm(p.~soiltrt, data=data.below)
summary(mod) #ns
mod<-lm(ncontent~soiltrt, data=data.below)
summary(mod) #ns
mod<-lm(pcontent~soiltrt, data=data.below)
summary(mod) #ns