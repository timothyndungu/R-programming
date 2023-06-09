
launch=read.csv("C:\\Users\\timot\\Downloads\\challenger.csv")
str(challenger)

#getting covariance
b=cov(launch$temperature,launch$distress_ct)/var(launch$temperature)
b

a=mean(launch$distress_ct)-b*mean(launch$temperature)
a
#getting correlation
cor(launch$temperature,launch$distress_ct)

#creating a simple regression function
reg=function(y,x){
  x=as.matrix(x)
  x=cbind(Intercept=1,x)
  solve(t(x)%*%x)%*%t(x)%*%y
}
str(launch)
reg(y=launch$distress_ct,x=launch[3:5])



insurance=read.csv("C:\\Users\\timot\\Downloads\\insurance.csv",stringsAsFactors = TRUE)
str(insurance)
#summary
summary(insurance$charges)
#histogram
hist(insurance$charges)

table(insurance$region)
#correlation
cor(insurance[c("age","bmi","children","charges")])

#creating a scatterplot
pairs(insurance[c("age","bmi","children","charges")])

install.packages("psych")
library(psych)
pairs.panels(insurance[c("age","bmi","children","charges")])

#fixing a linear regression model to data with r
ins_model=lm(charges~.,data=insurance)
ins_model

#summary
summary(ins_model)

#improving model performance
insurance$age2=insurance$age^2
ins_model=lm(charges~.,data=insurance)
ins_model

insurance$bmi30=ifelse(insurance$bmi>=30,1,0)
charges~bmi30*smoker

ins_model2=lm(charges ~ age + age2 + children + bmi + sex +bmi30*smoker + region, data = insurance)
ins_model2

#summary
summary(ins_model2)
