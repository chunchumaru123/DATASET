#USER INFROMATION : 19BDS0083 D VASANTH KUMAR

#DATA SOURCE : GitHUB

#OWNED BY: CSSEGISandDat/ COVID-19

#Description:This is the data repository for the 2019 Novel Coronavirus Visual Dashboard operated by the Johns Hopkins University Center for Systems 
            #Science and Engineering (JHU CSSE). Also, Supported by ESRI Living Atlas Team and the Johns Hopkins University Applied Physics Lab (JHU APL).

#Data shape:	4214 rows and 12 columns
#TAGS FOR THE DATA SET : MULTIVARIATE,MISSING-DATA

#-----------------------------------------------------------------------------------------------------------------------------------

#LIBRARIES USED
library(rvest)
library(dplyr)
library(tidyr)
library(utils)

#DETERMINING THE SIZE OF THE DATA SET IN MY DIRECTORY

file.info("V:/vit/sem5/rvest/COVID_19.csv")$size

#READING THE DATA SET

df5 <- read.csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/UID_ISO_FIPS_LookUp_Table.csv")
#STORING THE DATA SET IN NEW VARIABLE KEEPS THE ORIGINALITY OF THE DATA SET BEFORE CLEANING
df6 <-data.frame(df5)
View(df6)

#AN INITIAL LOOK AT THE DATA FRAME
str(df6)
#checking the observation
View(df6)
#summarizing the data set
summary(df6)

#CHECKING FOR STRUCTURAL ERRORS
#RENAMING MISSLABLED VARIABLES
library(janitor)
df6 <- clean_names(df6)

df6 <- df6 %>% rename(latitude=lat,longitude=long,UID=uid,CODE_3=code3,ISO_2=iso2,ISO_3=iso3,FIPS=fips,ADMIN_2=admin2)

colnames(df6)
#CHECKING FOR FAULTY DATA TYPES
str(df6)
#NO FAULTY DATA TYPES FOUND



#DEALING WITH NA/MISPLACED/EMPTY VALUES

#replacing empty cells with NA
df6[df6==""] <- NA

#Removing the columns and rows having missing data more than 60%
#initializing a variable with the percentage value
#REMOVING ROWS WITH MORE THAN 60% NA
threshold <- 0.6 # for 60%
df6 <- df6 %>% filter(rowMeans(is.na(.))< threshold)
#REMOVING COLUMNS WITH MORE THAN 60% NA
df6 <- df6[,which(colMeans(!is.na(df6))>threshold)] 

#for a particular column replacing NA with median of the column 
df6$FIPS <- ifelse(is.na(df6$FIPS),median(df6$FIPS,na.rm = TRUE),df6$FIPS)

#Applying Mean or Median for Imputing Missing Values in all numerical var columns
df7 <- df6
for(i in 1:ncol(df6)){
  df7[is.na(df7[,i]), i] <- mean(df7[,i], na.rm = TRUE)
}
summary(df7)

#KNN-IMPUTATION

#The k nearest neighbours is an algorithm that is used for simple classification

#This can be very useful in making predictions about the missing values by finding the k's closest neighbours to the observation with missing data 
# and then imputing them based on the non-missing values in the neighbourhood
# The main reason of using KNN for this data set is it creates a basic mean impute then uses the resulting complete list to construct a KDTree. Then, it uses the resulting KDTree to compute nearest neighbours (NN). 
#After it finds the k-NNs, it takes the weighted average of them.

install.packages("mice")
library(VIM)

new <- kNN(df7,variable = c('ADMIN_2'),k=6)
new <- subset(new,select =1:12)
View(new)

#IMPUTING THE CHARACTER COLUMNS WITH THE MEDIAN OF THE DATA
df7$province_state <- ifelse(is.na(df7$province_state),median(df7$province_state,na.rm = TRUE),df7$province_state)
df7$ADMIN_2 <- ifelse(is.na(df7$ADMIN_2),median(df7$ADMIN_2,na.rm = TRUE),df7$ADMIN_2)

#TO check whether all NA's are removed from every columns and rows
is.na(df7)


