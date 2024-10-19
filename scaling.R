setwd("C:/Users/kkkdc")
data1<-read.csv("주거인구_평균.csv", header = T,fileEncoding = "euc-kr")
data1

library(dplyr)
dt1<-read.csv("주거인구_평균.csv", header = T,fileEncoding = "euc-kr")
dt1

#특정 구역별 연령대별 인구수 정규화
df10_min<-min(dt1$POP_10)
df10_max<-max(dt1$POP_10)
dt1$POP_10<-scale(dt1$POP_10,center = df10_min, scale=df10_max-df10_min)

df20_min<-min(dt1$POP_20)
df20_max<-max(dt1$POP_20)
dt1$POP_20<-scale(dt1$POP_20,center = df20_min, scale=df20_max-df20_min)

df30_min<-min(dt1$POP_30)
df30_max<-max(dt1$POP_30)
dt1$POP_30<-scale(dt1$POP_30,center = df30_min, scale=df30_max-df30_min)

df40_min<-min(dt1$POP_40)
df40_max<-max(dt1$POP_40)
dt1$POP_40<-scale(dt1$POP_40,center = df40_min, scale=df40_max-df40_min)

df50_min<-min(dt1$POP_50)
df50_max<-max(dt1$POP_50)
dt1$POP_50<-scale(dt1$POP_50,center = df50_min, scale=df50_max-df50_min)

df60_min<-min(dt1$POP_60)
df60_max<-max(dt1$POP_60)
dt1$POP_60<-scale(dt1$POP_60,center = df60_min, scale=df60_max-df60_min)

data2<-select(dt1, POP_10, POP_20, POP_30, POP_40, POP_50, POP_60, sd)
View(data2)
write.csv(data2, file = "C:/R/정규화최종.csv", fileEncoding = 'CP949')
