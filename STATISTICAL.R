

#-----------------------------------------------------------------------------------------------------------------------------------
#WRITING META DATA

#USER INFROMATION : 19BDS0083 D VASANTH KUMAR

#DATA SOURCE : chunchumaru123/DATASET/gapminder.csv

#Description: Per-capita GDP (Gross domestic product) is given in units of international dollars, "a hypothetical unit of currency that has the same purchasing power parity that the U.S. dollar had in the United States at a given point in time" - 2005, in this case.

#Data shape:	1704 rows and 7 columns
#TAGS FOR THE DATA SET : MULTIVARIATE,TIME-SERIES,STATISTICAL DATA

#-----------------------------------------------------------------------------------------------------------------------------------
#LIBRARIES USED
library(rvest)
library(dplyr)
library(tidyr)
library(utils)
library(ggplot2)

#READING THE DATA SET
gap <- read.csv("https://raw.githubusercontent.com/chunchumaru123/DATASET/main/gapminder.csv")
gap <-gap[2:7]

#STORING THE DATA SET IN NEW VARIABLE KEEPS THE ORIGINALITY OF THE DATA SET BEFORE CLEANING
df1 <-data.frame(gap)

View(df1)

str(df1)
summary(df1)
attach(df1)
#-------------------------------------------------------------------------------
#CALCULATING MEAN OF A COLUMN
#FUNCITON TO CALCULATE MEAN
get_mean <- function(df1)
{
  b=0
  n=0
  for(i in df1$pop)
  {
    b <- b+i
    n=n+1
  } 
  mean_1=b/n
  return(mean_1)
}
#Main Function Calling- User defined
get_mean1 <-get_mean(df1)
print("Mean:")
print(get_mean1)
#checking mean with inbuilt Function
print(paste("Mean(inbuilt-function):",round(mean(df1$pop),0)))
#-------------------------------------------------------------------------------
#CALCULATING MEDIAN OF A COLUMN

n=dim(df1)[1]
#THE COLUMN IS SORTED USING INBUILT FUNCTION
s_df1=sort(df1$pop)
#FUNCITON TO CALCULATE MEDIAN
get_median <- function(s_df1)
{
  if(n%%2==0)
  {
    median1=s_df1[n/2]
    median2=s_df1[(n-1)/2]
    medians=(median1+median2)/2
  }else{
    medians=s_df1[n/2]
  }
  return(medians)
}
#Main Function Calling- User defined
get_median <- get_median(s_df1)  
print(paste("Median:",get_median))
#checking median inbuilt Function
median(s_df1)
#-------------------------------------------------------------------------------
#CALCULATING MODE OF A COLUMN
#FUNCITON TO CALCULATE MODE
Mode <- function(x) {
  ux <- unique(x)
  mode1 <- ux[which.max(tabulate(match(x, ux)))]
  return(mode1)
}

x=df1$pop
#Main Function Calling- User defined
get_mode <- Mode(x)
print(paste("Mode",get_mode))

#Testing with inbuilt Function
#NO BUILT-IN FUNCTION FOR MODE
#-------------------------------------------------------------------------------
#CALCULATING INTER QUARTILE RANGE OF A COLUMN
#INITIALIZING THE GLOBAL VARIABLES
x=df1$pop
n=dim(df1)[1]
z=0
r=0
#THE COLUMN POP AFTER SORTING
x1=sort(x)
#Function to give index of the median
median1 <- function(x1,a,n){
  z = n - a + 1
  z = (z + 1) / 2 - 1
  return(z + a)
}
#Function to give iqr
iqr <-function(x,n){
  
  #Index of median of entire data
  mid_index=median1(x1,0,n)
  #Median of first half
  Q1 <- x1[median1(x1,0,mid_index)]
  #Median of second half
  Q3 <-x1[median1(x1, mid_index, n)]
  #IQR calculation
  return(Q3-Q1)
}
#Main Function Calling- User defined
print(paste("IQR(user-defined func):",iqr(x,n)))
#Testing with inbuilt Function
IQR(x1)
#-------------------------------------------------------------------------------

#CALCULATING STANDARD DEVIATION OF A COLUMN
n=dim(df1)[1]
#FUNCITON TO CALCULATE SD
calculatesd <- function(x)
{
  sum=0.0
  SD=0.0
  mean_new=get_mean1
  for(i in x)
  {
    SD=SD+(i-mean_new)^2
  }
  return(sqrt(SD/n))
}
#Main Function Calling- User defined
get_sd <-calculatesd(df1$pop)
print(paste("Standard Deviation:",round(calculatesd(df1$pop),0)))
#Testing with inbuilt Function
sd(df1$pop)
#-------------------------------------------------------------------------------

#Empirical Rule Check
#68%, 95%, and 99.7% Sigma rule

the.mean=mean(df1$pop)
the.sd=get_sd
#calculate the lower and upper bounds:
lower.bounds = the.mean - 1:3*the.sd
upper.bounds = the.mean + 1:3*the.sd

#calculate the proportion of observations between each pair of the upper and lower bounds
one.sd = mean(df1$pop > lower.bounds[1] & df1$pop < upper.bounds[1]) #68%
two.sd = mean(df1$pop > lower.bounds[2] & df1$pop < upper.bounds[2]) #95%
three.sd = mean(df1$pop > lower.bounds[3] & df1$pop < upper.bounds[3]) #99.7%

#-------------------------------------------------------------------------------
#Histogram
hist(df1$pop)
# after seeing the histogram it is obvious that the data is positively skewed.Hence to reduce it log is used.
#A log transformation is a process of applying a logarithm to data to reduce its skew.usually done when the numbers are highly skewed to reduce the skew so the data can be understood easier

hist(log(df1$pop),main = "population plot ",col = "darkmagenta")

#Normal Probability Plot
qqnorm(log(df1$pop),main = "Normal Probability Plot population")
qqline(log(df1$pop))
#-------------------------------------------------------------------------------
#LINE GRAPH

plot(log(df1$pop),type = "o",main="population chart",col="RED",xlim = c(0,200))
#-------------------------------------------------------------------------------
#NORMAL DISTRIBUTION CURVE

x <- log(df1$pop)
y <-dnorm(x,mean=get_mean1,sd=get_sd)

plot(x,y,col="darkmagenta")
#-------------------------------------------------------------------------------

#HYPOTHESIS TESTING

#performing two-tailed-t-test
#Step 1: State the null and alternate hypothesis

# (null hypothesis) H0: the difference in the lifeExp of countries Ireland and south Africa is zero
# (alternate hypothesis) H1: there exists a difference between lifeExp of countries Ireland and south Africa

#Step 2: Collect data-creating new data frame

##Filtering the data by country of interest South africa and Ireland
df_dup <- df1 %>% select(country,lifeExp)%>%
  filter(country=="South Africa" | country=="Ireland")%>%
  group_by(country)

#Step 3: Perform a statistical test

##Using t.test
t.test(data=df_dup,lifeExp ~country)

#Step 4: Decide whether the null hypothesis is supported or refuted

#the Result tells us the average lifeExp in Ireland and South Africa is 73 years and 53 years respectively
# with a difference of 20 years

# Since the P- value is close to zero,it is unlikely that null hypothesis will happen
#So there is exists a difference between lifeExp for the countries according to alternate hypothesis

#we can see that the difference in means for our sample data is 73.01725 and 53.99317  , and the confidence interval shows that the true difference 
#in means is between 15.07022 and 22.97794. So, 95% of the time, the true difference in means will be different from 0. Our p-value of  4.466e-09 is
#much smaller than 0.05, so we can reject the null hypothesis of no difference and say with a high degree of confidence that the true difference in means is not equal to zero.

#So null hypothesis is rejected



