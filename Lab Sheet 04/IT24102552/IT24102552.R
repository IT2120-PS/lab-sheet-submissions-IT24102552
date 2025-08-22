setwd("C:/Users/IT24102552/Desktop/IT24102552")
getwd()

branch_data<-read.table("Exercise.txt",header=TRUE,sep = ",")

str(branch_data)

boxplot(branch_data$Sales_X1,main = "Box plot for Sales",ylab = "Sales",
        outline = TRUE, outpch=8 ,horizontal = TRUE)

summary(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)

find_outliers<-function(x){
  Q1<-quantile(x,0.25,na.rm=TRUE)
  Q3<-quantile(x,0.75,na.rm=TRUE)
  IQR_val<-Q3-Q1
  Lower_bound<-Q1-1.5*IQR_val
  Upper_bound<-Q3+1.5*IQR_val
  outliers<-x[x<Lower_bound | x>Upper_bound]
  return(outliers)
}
outliers_years<-find_outliers(branch_data$Years_X3)




