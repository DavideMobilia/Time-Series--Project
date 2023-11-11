library(forecast)
Y<-wineind #Time series
plot(Y, main="Wine sales", cex.main=1.4)
mdl<-ets(Y, model="AAA", damped=TRUE)
summary(mdl)

rm(list=ls())

## 
U1_aggr <- read.csv("C:/Users/dvd_m/Desktop/Progetto- DSLab/U1_aggr.txt")
U1=U1_aggr[U1_aggr$CONSUMO_ATTIVA_PRELEVATA!=0,]
plot(U1_aggr$CONSUMO_ATTIVA_PRELEVATA,type="l")
plot(U1$CONSUMO_ATTIVA_PRELEVATA,type="l")

head(U1_aggr)
library("xts")
U1_new <- as.xts(U1$CONSUMO_ATTIVA_PRELEVATA,order.by=as.Date(U1$T))
weekly <- apply.weekly(U1_new,sum)
daily <- apply.daily(U1_new,sum)
head(weekly)


auto.arima(daily,seasonal = T,stepwise = TRUE,
           d=1,
           D=1,
           max.p = 5,
           max.q = 5,
           max.P = 2,
           max.Q = 2,
           max.order = 5,
           max.d = 2,
           max.D = 1,
           start.p = 0,
           start.q = 0,
           start.P = 0,
           start.Q = 0)


auto.arima(weekly,seasonal = T,stepwise = TRUE,
           d=1,
           D=1,
           max.p = 5,
           max.q = 5,
           max.P = 2,
           max.Q = 2,
           max.order = 5,
           max.d = 2,
           max.D = 1,
           start.p = 0,
           start.q = 0,
           start.P = 0,
           start.Q = 0)

ts_u1=ts(data=U1$CONSUMO_ATTIVA_PRELEVATA,deltat = 1/24)

as.POSIXlt(U1$T)

dummy=as.POSIXlt(U1$T, format="%Y-%m-%d %H:%M:%S")
dummy$wday

plot(ts_u1,type="l")
ets_U1=ets(ts_u1,model="ZZZ",damped=T)
summary(ets_U1)

lvl=ets_U1$states[,1]
slp=ets_U1$states[,2]
seas=ets_U1$states[,3]
res=residuals(ets_U1)

plot(lvl,type="l")
par(mfrow=c(2,2),cex.axis=1, cex.lab=1, cex.main=1, fg="white",
    col.axis="white", col.lab="white", col.main="white", bg="black")
plot(lvl, col="yellow", main="Level", cex.main=1.4)
plot(slp, col="yellow", main="Slope", cex.main=1.4)
plot(seas, col="yellow", main="Seasonal", cex.main=1.4)
plot(res, col="yellow", main="Residuals", cex.main=1.4)
