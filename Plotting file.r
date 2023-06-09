#Question 2 
#Viewing the data 
cars

#(1)
#Drawing a scatter plot if the data
plot(cars, col='blue', pch=20, cex=2, main="Relationship between Speed and Stopping Distance for 50 Cars",
     xlab="Speed in mph", ylab="Stopping Distance in feet")

#(2)
#calculation of correlation coefficient between cars and distance
cor(cars$speed, cars$dist) 
#Correlation ranges between -1 and +1. Stronger as it tens towards +1
#Speed and distances are highly correlated. 0.81 is a strong positive value

#(3)
#Addition of a regression line
m<-lm(dist~speed, data=cars)
m
plot(cars, col='blue', pch=20, cex=2, main="Relationship between Speed and Stopping Distance for 50 Cars",
     xlab="Speed in mph", ylab="Stopping Distance in feet")
abline (m,col ="red")

#(4)
#interpatation of value 
summary(m)
#distance=-17.579+3.932(speed)
#(a)
#when speed is zero That is -17.579 feet to come to a stop.
#speed can not be negative hence the intercept cannot be used to interprate in this instance 
#(b)
#3.932 is the slope coefficient i.e For every unit increase in the speed of a car, the rquired distance to stop goes up by 3.9324
#(c)
#p value of 1.49e-12 is very close to zero meaning that we reject the null hypothesis qhich allows as to conclude that there is a relationship between speed and distance.
