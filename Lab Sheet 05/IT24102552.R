setwd("C:/Users/IT24102552/Desktop/IT24102552")
getwd()

Delivery_Times<-read.table("Exercise - Lab 05.txt",header=TRUE,sep=",")
fix(Delivery_Times)

attach(Delivery_Times)

histogram<-hist(Delivery_Times$Delivery_Time_.minutes.,main = "Histogram for Delivary times",breaks = seq(20,70,length = 10),right = FALSE)

breaks<-round(histogram$breaks)
freq<-histogram$counts
mids<-histogram$mids

Classes<-c()

for(i in 1:length(breaks)-1){
  classes[i] <- paste0("[", breaks[i], ",", breaks[i+1], ")")
}

cbind(classes=classes,frequency=freq)

lines(mids,freq)
plot(mids,freq,type = 'l', main = "Frequency Polygon for delivery time" , xlab="Delivery times" , ylab = "Frequency" , ylim = c(0,max(freq)))


cum.freq<-cumsum(freq)

new<-c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
}
plot(breaks,new,type='l',main="Cumulative frequency polygon for delivery times",
     xlab="delivery times",ylab = "Cumulative frequency",ylim=c(0,max(cum.freq)))
cbind(Upper=breaks,CumFreq = new)