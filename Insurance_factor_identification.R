#load data
library(readr)
df <- read.csv("Insurance_factor_identification.csv")

#insight_1
#know each field of the data to gain basic insights into the data set.
summary(df)

#insight_2 
cor(df$Claims,df$Payment)
#99.54% indicates claims is positively corelated with payment 

cor(df$Insured,df$Payment)
#93.33% indicates  is  positively corelated insured with paymnet 

#to visualize the results for better understanding.
plot(df$Claims,df$Payment)
plot(df$Insured,df$Payment)

#insight_3
#to figure out the reasons for insurance payment increase and decrease. 

#Independent variable: insured, claims, make, bonus, zone, and kilometers 
#Dependent variable: payment 
lm2<-lm(df$Payment~.,data=df) 
summary(lm2)

#except bonus and make all are related where km,insured,claims are strongly affecting 

#insight_4
#To find at what location, kilometre, and bonus level their insured amount, claims, and payment gets increased.

groupzone<-apply(df[,c(5,6,7)], 2, function(x) tapply(x, df$Zone, mean)) 
groupzone
# Zone 4 has the highest number of claims, and thus payment as well. 
# Zones 1-4 have more insured years, claims, and payments. 

groupkilo<-apply(df[,c(5,6,7)],2,function(x)tapply(x,df$Kilometres,mean)) 
groupkilo
# Kilometer group 2 has the maximum payments. Though the insured number of years is lesser than kilometre 1, the claims and payments are higher for group 2 

groupbonus<-apply(df[,c(5,6,7)],2,function(x)tapply(x,df$Bonus,mean)) 
groupbonus


#to find whether the insured amount, zone, kilometre, bonus, or make affects the claim rates and to what extent. 

#Dependent variable: claims 
#Independent variable: kilometres, zone, bonus, make, and insured
reg<-lm(Claims~Kilometres+Zone+Bonus+Make+Insured,data=df) 
summary(reg)


#The results provides the intercept and estimated value and this shows that  p-values of all the independent variables,such as kilometres, zone, bonus, make, and insured are highly significant and are making an impact on the claims. 















