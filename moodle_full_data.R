
#-----------------------------------------------------------------------------------------------------------------------------------
#WRITING META DATA

#USER INFROMATION : 19BDS0083 D VASANTH KUMAR

#DATA SOURCE : timeanddate

#OWNED BY: timeanddate.com

#Activity description: The activity is to collect the data from timeanddate.com for 14 days  using web scrapping and creating a dataset from the observed.

#Description:timeanddate's forecasts and warning services are based on weather information derived from numerous sources, 
#including weather observations and data gathered by the National Weather Service and meteorological organizations. Using this webservice the
# data set for weather information of my state capital city for 14 days is collected. The data is collected in regular interval of time. 
#The report of the weather is collected each hour for 14 days and stored in as a dataset

#Data shape:12 columns 	

#TAGS FOR THE DATA SET : Web Scarpping,time-series

#-----------------------------------------------------------------------------------------------------------------------------------
#LIBRARIES USED

library(rvest)
library(dplyr)
library(stringr)
library(rpart)
library(rpart.plot)
library(utils)
library(lubridate)
library(caret)
library(caTools)
#READING THE DATA SET FROM THE URL
model1 <- read.csv("V:/vit/sem5/DATA SCIENCE/19BDS0083_2.csv",check.names = F)

#REMOVING THE FIRST COLUMN X
model1 <- model1[2:12]

#Since the data is extracted using webscrapping the dataset is preprocessed using below commands
#######################################

# #temp clean
# g$`Temperature(°C)`<- as.character(g$`Temperature(°C)`)
# g$`Temperature(°C)`<- substr(g$`Temperature(°C)`,1,3)
# g$`Temperature(°C)` <- as.numeric(g$`Temperature(°C)`)
# #
# #weather con clean
#
# g$outlook<- gsub('[.]', '', g$outlook)
#
#
# #feels like
#
# g$`Feels_like(°C)` <-substr(g$`Feels_like(°C)`,1,17)
# g$`Feels_like(°C)`<-gsub(".*[:]([^.]+)[°].*", "\\1", g$`Feels_like(°C)`)
#
# g$`Feels_like(°C)` <- as.numeric(g$`Feels_like(°C)`)
# #humidity
#
# g$humidity.1 <- str_remove(g$humidity.1,"%")

# #remove humidiy
# g = subset(g, select = -humidity )
# g$`Humidity(%)` <- as.numeric(g$`Humidity(%)`)
# #forecast
# g$forecast<-gsub(".*[:]([^.]+)[°].*", "\\1", g$forecast)
#
# #wind
# g$wind<-gsub(".*[°CWind:]([^.]+)[km/h]", "\\1", g$wind)
# g$wind<-gsub('.*Wind:', '', g$wind)
# g$wind<- substr(g$wind,1,3)
#
# g$wind <- as.numeric(g$wind)
# g$wind <-ifelse(is.na(g$wind),0,g$wind)
#
#
# #visibility
# g$`Visibility(km)`<- substr(g$`Visibility(km)`,1,2)
# g$`Visibility(km)` <- as.numeric(g$`Visibility(km)`)
# #pressure
# g$`Pressure(mbar)` <-str_remove(g$`Pressure(mbar)`,"mbar")
# g$`Pressure(mbar)` <- as.numeric(g$`Pressure(mbar)`)
#
# #dewpoint
# #
# g$`Dew_point(°C)` <- substr(g$`Dew_point(°C)`,1,3)

# g$`Dew_point(°C)` <- as.numeric(g$`Dew_point(°C)`)
#

# temp <-g
#

#
# #REMOVING ROWS WITH TIME INTERVAL OF LESS THAN A HOUR
# # g <- g[-c(112,115,116),]
# # g<-g[-c(20,21,65,86,89,90,91,115),]
# # rownames(g) <- NULL

#RENAMING THE COLUMNS
colnames(model1)<-c("Date_Time","Temperature_celsius","outlook","Feels_like","Forecast_celsius","Wind(km/h)","Humidity(%)","Location","Visibility(km)","Pressure(mbar)","Dew_point_celsius")

#CONVERTING DATE_TIME CHARACTER COLUMN TO DATE and TIME FORMAT
model1$Date_Time <-as.POSIXct(model1$Date_Time,format="%Y-%m-%d  %H:%M:%S")

model1$Date <- as.Date(model1$Date_Time,"%Y-%m-%d")
model1$Time <- format(model1$Date_Time,"%H:%M:%S")
model1$Date_Time <- NULL


#attach(model1)
# CONVERTING THE OUTLOOK COLUMN TO NOMINAL CATEGORICAL COLUMN(FACTORS)
#############################################################

for(i in 1:nrow(model1)){
  if(grepl("(Rain|rain)",model1$outlook[i])==TRUE){
    model1$outlook[i]<-"Rain"
  }else {
    model1$outlook[i] <- model1$outlook[i]
  }
}
##############################################################
for(i in 1:nrow(model1)){
  if(grepl("(Thunderstorms)",model1$outlook[i])==TRUE){
    model1$outlook[i]<-"Thunder"
  }else {
    model1$outlook[i] <- model1$outlook[i]
  }
}
##############################################################
for(i in 1:nrow(model1)){
  if(grepl("(Drizzle)",model1$outlook[i])==TRUE){
    model1$outlook[i]<-"Drizzle"
  }else {
    model1$outlook[i] <- model1$outlook[i]
  }
}
##############################################################
for(i in 1:nrow(model1)){
  if(grepl("(Broken clouds|Partly cloudy)",model1$outlook[i])==TRUE){
    model1$outlook[i]<-"Scattered clouds"
  }else {
    model1$outlook[i] <- model1$outlook[i]
  }
}
##############################################################
for(i in 1:nrow(model1)){
  if(grepl("(Fog| Fog)",model1$outlook[i])==TRUE){
    model1$outlook[i]<-"Fog"
  }else {
    model1$outlook[i] <- model1$outlook[i]
  }
}
##############################################################
for(i in 1:nrow(model1)){
  if(grepl("(Scattered clouds| Scattered clouds)",model1$outlook[i])==TRUE){
    model1$outlook[i]<-"Scattered clouds"
  }else {
    model1$outlook[i] <- model1$outlook[i]
  }
}
##############################################################
search <- " Passing clouds"
repl <-"Passing clouds"
model1$outlook= sub(search,repl,model1$outlook)
for(i in 1:nrow(model1)){
  if(grepl("(Passing clouds)",model1$outlook[i])==TRUE){
    model1$outlook[i]<-"Scattered clouds"
  }else {
    model1$outlook[i] <- model1$outlook[i]
  }
}
##############################################################
# MAKING THE OUTLOOK COLUMN AS FACTORS
model1$outlook <- as.factor(model1$outlook)
summary(model1)
#LABEL ENCODING

model2 <-subset(model1,select = -c(Feels_like,Forecast_celsius,Date,Time,Location))
model2 <-model2[,c(1,2,3,4,6,7,5)]
View(model2)

#----------------------------
# Decision Tree - Regression
#----------------------------

#PREDICTING THE RANGE OF VISIBILITY in (km) USING TEMP,HUMIDITY,PRESSURE,WIND and OUTLOOK
#FIT MODEL

m1 <- rpart(model2$`Visibility(km)` ~ .,data = model2,method="anova")
print(m1)
#PLOT TREE
rpart.plot(m1,type=3,digits = 4,fallen.leaves = TRUE)
#PREDICT THE VISIBILITY FOR THE GIVEN TEMP,HUMIDITY AND PRESSURE
p2 <- predict(m1,model2[1,-7])
print(p2)



attach(model2)

set.seed(123)
result=sample.split(model2,SplitRatio = 0.85 ,group = NULL) 
#SPLITTING THE DATSET INTO TEST AND TRAIN
train_data=model2[result==TRUE,]
test_data=model2[result==FALSE,]
test_vis=test_data$`Visibility(km)`#OBSERVED DATA


#FIT a tree based on training data
sample_train <- rpart(train_data$`Visibility(km)` ~ .,data = train_data,method="anova")
rpart.plot(sample_train,type=3,digits = 4,fallen.leaves = TRUE)


# check how the model is doing using the testing dataset
p1 <- predict(sample_train,test_data)
print(p1)

#MEAN ERROR CHECK
err_test <- mean((p1-test_vis)^2)
print(err_test)
# R SQUARE
print((cor(test_vis,p1))^2)
report=data.frame()

