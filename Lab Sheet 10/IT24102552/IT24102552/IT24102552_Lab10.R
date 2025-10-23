setwd("C:\\Users\\ASUS TUF\\Desktop\\IT24102552")

#Part1
#Here, the vending machine owner claims that customers choose the four snack types with equal probability.
#That means probability of customer choosing each of the four snack types would be 0.25.
#Alternative hypothesis will be at least one snack type exist such that probability of customer choosing
#it will be different from 0.25.

#Part2
#To test the null hypothesis we need to conduct goodness of fit test which is a chi-squared test.
observed <- c(120, 95, 85, 100)
prob <- c(.25, .25, .25, .25)
chisq.test(x=observed, p=prob)

#Part3
#Consider 5% level of significance for the test.
#Rejection Region: If the p value for the test is less than 0.05,
#reject the null hypothesis at 5% level of significant.
#P value for the test got as 0.08966
#Conclusion: Since the p value (0.08966) is greater than 0.05, do not reject null hypothesis at 5% 
#level pf significance. Therefore we can conclude that probability of customers choosing four snack types 
#wil be the same which is 0.25