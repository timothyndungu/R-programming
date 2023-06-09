# finding the factors of a number
find_factors <- function(x){
  # creating the array from 1:x
  y <- 1:x
  # filtering the appropriate values where 
  # the remainder is zero
  y[x %% y == 0 ]
}


# creating a function for identifying prime numbers
is_prime <- function(x){
  factors = find_factors(x)
  n = length(factors)
  if (n == 2){
    return(TRUE)
  }else{
    return(FALSE)
  }
  
}
# 
square_free<- function(n){
  # getting the factors of the number
  factors = find_factors(n)
  # getting the square root of the factors
  sqrt_factors = sqrt(factors)
  # picking only the integer square roots
  int_factors = sqrt_factors[sqrt_factors %% 1 == 0]
  # creating a vectors which shows whether the number 
  # is prime or not
  primes = sapply(int_factors, is_prime)
  # checking if there is a prime number in the square roots
  if(any(primes==TRUE)){
    return (TRUE)
  }else{
    return(FALSE)
  }
}

# example using the function
square_free(30)





# While loop 
# in this case , a certain action is performed
# as long as a condition is true

# initialize a variable
i <- 1
while(i <= 10){
  print("This is a good day!")
  i = i+1
}

# for a loop, it will iterate through all the elements
students <- c("elvis", "brian", "julliet")
for (student in students){
  print(student)
}

# 
# ggplot2 is library 
# first, you need to install ggplot2 since it's an 
# external library/package/module

#installing the package
install.packages("ggplot2")

# once you have a package, you can call it or tell
# the computer you would like to use it
# you do this using the library function
library(ggplot2)
# view the first six observations in data
head(data)
# names of the columns
names(data)
# for me to use the dataframe, it's a good idea to 
# attach it..to avoid using dollar signs

attach(data)

# create a scatterplot of Sepal.Length against 
# Sepal.Width


#without ggplot2
plot(Sepal.Length~Sepal.Width, 
     main="Sepal Length vs Sepal Width",
     xlab="Sepal Width", 
     ylab="Sepal Length")

# using ggplot2
# ggplot2: grammar of graphics
# plot/graph = data + aesthetics + geometry

ggplot(data, aes(x=Sepal.Width, y=Sepal.Length))+
  geom_point()+xlab("Sepal Width")+
  ylab("Sepal Length")+ ggtitle("Sepal Length vs Sepal Width")


# 
# histogram question

# creating some random numbers 
random_sample <- sample(50000:120000, 60)
random_sample

breaks <- seq(20000, 120000, by=10000)

# creating a vector that stores colors
colors <- rep(c("red","blue"), 5)
colors
hist(random_sample, breaks = breaks, col=colors, xlab="Numbers")




# solving simultaneous
# equations

# creating the matrix

m <- rbind(
  c(10, 4, 1),
  c(5, 10, 2),
  c(15, 3, 4)
  
)
m
# create solution vector
v <- c(345, 450, 490)
# solving the equation
solve(m, v)
