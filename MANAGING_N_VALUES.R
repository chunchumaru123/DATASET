
#-----------------------------------------------------------------------------------------------------------------------------------
#WRITING META DATA

#USER INFROMATION : 19BDS0083 D VASANTH KUMAR

#DATA SOURCE : Kamyr digester 

#OWNED BY: OpenMV.net Datasets

#Description:Pulp quality is measured by the lignin content remaining in the pulp: the Kappa number. This data set is used to understand 
            # which variables in the process influence the Kappa number,and if it can be predicted accurately enough for an 
            # inferential sensor application.Variables with a number at the end have been lagged by that number of hours to line up the data.

#Data shape:	301 rows and 22 columns
#TAGS FOR THE DATA SET : MULTIVARIATE,MISSING-DATA,TIME-SERIES

#-----------------------------------------------------------------------------------------------------------------------------------

#LIBRARIES USED
library(rvest)
library(dplyr)
library(tidyr)
library(utils)

#DETERMINING THE SIZE OF THE DATA SET IN MY DIRECTORY

file.info("C:/Users/vasanth kumar/Downloads/kamyr-digester.csv")$size

#READING THE DATA SET

df <-read.csv("https://openmv.net/file/kamyr-digester.csv")
#STORING THE DATA SET IN NEW VARIABLE KEEPS THE ORIGINALITY OF THE DATA SET BEFORE CLEANING
df1 <-data.frame(df)

#AN INITIAL LOOK AT THE DATA FRAME
str(df1)
#checking the observation,resulting in 301 obs. of 23 variables and 22 columns
View(df1)
#summarizing the data set for checking number of NA's
summary(df1)


#CHECKING FOR STRUCTURAL ERRORS

#RENAMING MISSLABLED VARIABLES
library(janitor)
df1 <- clean_names(df1)
#CHECKING FOR FAULTY DATA TYPES
str(df1) # all columns are in numeric datatype except the observation columns which is char in datatype

#ROUNDING OFF THE VALUES IN COLUMN bf_c_mratio because it has 4 decimal places
df1$bf_c_mratio <- round(df1$bf_c_mratio,digits = 2)
#DEALING WITH NA/MISPLACED/EMPTY VALUES

#replacing empty cells with NA
df1[df1==""] <- NA

#Removing the columns and rows having missing data more than 60%
#initializing a variable with the percentage value
#REMOVING ROWS WITH MORE THAN 60% NA
threshold <- 0.6 # for 60%
df1 <- df1 %>% filter(rowMeans(is.na(.))< threshold)
#REMOVING COLUMNS WITH MORE THAN 60% NA
df1 <- df1[,which(colMeans(!is.na(df1))>threshold)] #column SulphidityL_4 and AAWhiteSt_4is removed because it had more than 60% NA


summary(df1)

#Imputing the missing value

#-----------------------------------------------------------#KNN-IMPUTATION -----------------------------------------------------------------------

#The k nearest neighbours is an algorithm that is used for simple classification

#This can be very useful in making predictions about the missing values by finding the k's closest neighbours to the observation with missing data 
# and then imputing them based on the non-missing values in the neighbourhood

# This KNN imputation is used in statistical data so that the NA columns are filled with appropriate nearby value,so that the calculations are made easier.

# This is a standard method used in imputing the missing values.

# The main reason of using KNN for this data set is it creates a basic mean impute then uses the resulting complete list to construct a KDTree. Then, it uses the resulting KDTree to compute nearest neighbours (NN). 
#After it finds the k-NNs, it takes the weighted average of them.

#install.packages("VIM")

library(VIM)


df1 <- kNN(df1,variable = c('uczaa'),metric=NULL,k=6)
df1 <- subset(df1,select =1:21)
View(df1)


#for a particular column replacing NA with median of the column  eg:chip_rate
df1$chip_rate <- ifelse(is.na(df1$chip_rate),median(df1$chip_rate,na.rm = TRUE),df1$chip_rate)

#Applying Mean or Median for Imputing Missing Values in remaining columns[mean is used in continuous data]
for(i in 1:ncol(df1)){
  df1[is.na(df1[,i]), i] <- mean(df1[,i], na.rm = TRUE)
}

summary(df1)
#ADDITIONAL INFORMATION
#INORDER TO CREATE A DATA SET WITH NA'S LIBRARY(missForest) provides a function called prodNA(file,noNA=0.6)

