# DEcision trees

#Exploring and preparing data
credit<- read.csv("https://raw.githubusercontent.com/stedy/Machine-Learning-with-R-datasets/master/credit.csv")
str(credit)
table(credit$checking_balance)
table(credit$savings_balance)


credit$default<- factor(credit$default,levels = c(1,2), labels = c("no", "yes"))
summary(credit$months_loan_duration)
summary(credit$amount)

table(credit$default)

#Data preparation
#Splitting into train and test datasets
#To ensure replicability of results
set.seed(12345)
#Randomize data
credit_rand<- credit[order(runif(1000)),]

summary(credit$amount)
summary(credit_rand$amount)
#examining first few values in each data frame
head(credit$amount)
head(credit_rand$amount)
#If your results do not match exactly with the previous ones,
#ensure that you run the command set.seed(214805)
#immediately prior to creating the credit_rand data frame.

#splitting into training and testing
credit_train <- credit_rand[1:900, ]
credit_test<- credit_rand[901:1000, ]

#Getting the proportion of defaulters
prop.table(table(credit_train$default))
prop.table(table(credit_test$default))

#Training a model on the data
install.packages("C50")
library(C50)

#Omit column 17 from credit train- class variable(exclude it from the training data frame as
#an independent variable, but supply it as the target factor vector for classification:)
credit_model<- C5.0(credit_train[-17], credit_train$default)
credit_model

summary(credit_model)
#STEP 4: Evaluating model perfomance
credit_pred <- predict(credit_model, credit_test)
install.packages("gmodels")
library(gmodels)
CrossTable(credit_test$default, credit_pred,prop.chisq = FALSE, prop.c = FALSE, prop.r = FALSE,dnn = c('actual default','predicted default'))
# prop.c and prop.r being false removes the column and row percentages.
#step 5- improving model perfomance
 credit_boost10 <- C5.0(credit_train[-17], credit_train$default,trials=10)
credit_boost10 
summary(credit_boost10)
credit_boost_pred10<- predict(credit_boost10,credit_test)
CrossTable(credit_test$default, credit_boost_pred10, prop.chisq = FALSE,prop.c = FALSE, PROP.R=FALSE
           ,dnn = c('actual default','predicted default'))

#The C5.0 algorithm allows us to assign a penalty to different types of errors in order
#to discourage a tree from making more costly mistakes.
# Suppose we believe that a loan default costs the bank four times as much
#as a missed opportunity. Our cost matrix then could be defined as:
error_cost<- matrix(c(0,1,4,0),nrow = 2)
error_cost
credit_cost <- C5.0(credit_train[-17], credit_train$default,costs= error_cost)
error_cost <-factor(error_cost,levels = c(1,2), labels = c("no","yes"))
error_cost
rownames(error_cost)<-c("no","yes")
colnames(error_cost)<- c("no", "yes")
error_cost
credit_cost_pred<- predict(credit_cost,credit_test)
CrossTable(credit_test$default,credit_cost_pred,prop.chisq = FALSE,prop.r = FALSE,prop.c = FALSE,dnn = c('actual default','predicted default') )

#RIPPER ALGORITHM
install.packages("RWeka")
library(RWeka)
