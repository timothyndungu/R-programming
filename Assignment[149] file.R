# function to sort the array using bubble sort
bubble_sort <- function(x)
{
  
    if(length(unique(x) != length(x))){
      x <- unique(x)
  
  }
  # calculate the length of array
  n <- length(x)
  # run loop n-1 times
  for (i in 1 : (n - 1)) {
    # run loop (n-i) times
    for (j in 1 : (n - i)) {
      # compare elements
      if (x[j] > x[j + 1]) {
        temp <- x[j]
        x[j] <- x[j + 1]
        x[j + 1] <- temp
      }
    }
  }
  return(x)
}

# take 10 random numbers between 1 - 100
arr <- sample(1 : 100, 10)

# sort the array and store the result
# in sorted_array
sorted_array <- bubble_sort(arr)

# print sorted_array
sorted_array





#Insertion Sort
# insertion sort function to sort array

insertion_sort <- function(x){
  
  if(length(unique(x) != length(x))){
    x <- unique(x)
    
  }
  
  n <- length(x)
  #outer loop 
  for(i in 2:n){
    key = x[i]
    j = i-1
    
    # compare the key with the elements
    #to the left of it
    while( j > 0 && (x[j] > key)){
      x[j+1] =x[j] 
    j= j-1
    }
 
  #place key at its correct position
  x[j +1] = key
  }
  return(x)
}

insertion_sort(arr)


selection_sort <- function(x){
  
  if(length(unique(x) != length(x))){
    x <- unique(x)
    
  }
  n <- length(x)
  for (i in 1 : (n-1)){
    
    min_index <- i
    
    for(j in ((i+1):n)){
      #Check if element at j is smaller
      #than element at min_index
      
      if(x[j] < x[min_index]){
        #if yes position of our minimum 
        #number is now at index j
        min_index = j
      }
    }
   #swap element at i with element at min_index
    t <- x[i]
    x[i] <- x[min_index]
    t -> x[min_index]
  }
  return(x)
}

selection_sort(arr)


merge <- function(a, b) {
  # create temporary array
  temp <- numeric(length(a) + length(b))
  
  # take two variables which initially points to
  # starting of the sorted sub arrays
  # and j which points to starting 
  # of temporary array
  astart <- 1
  bstart <- 1
  j <- 1
  for(j in 1 : length(temp)) {
    # if a[astart] < b[bstart]
    if((astart <= length(a) &&
        a[astart] < b[bstart]) ||
       bstart > length(b)) {
      # insert a[astart] in temp and increment
      # astart pointer to next
      temp[j] <- a[astart]
      astart <- astart + 1
    }
    else {
      temp[j] <- b[bstart]
      bstart <- bstart + 1         
    }
  }
  temp
}

# function to sort the array
mergeSort <- function(arr) {
  
  # if length of array is greater than 1,
  # then perform sorting
  if(length(arr) > 1) {
    
    # find mid point through which
    # array need to be divided
    mid <- ceiling(length(arr)/2)
    
    # first part of array will be from 1 to mid
    a <- mergeSort(arr[1:mid])
    
    # second part of array will be
    # from (mid+1) to length(arr)
    b <- mergeSort(arr[(mid+1):length(arr)])
    
    # merge above sorted arrays
    merge(a, b)
  }
  # else just return arr with single element
  else {
    arr
  }
}

quickSort <- function(x) {
  
  # Pick a number at random
  random_index <- sample(seq_along(x), 1);
  pivot <- x[random_index]
  x <- x[-random_index]
  
  # Create array for left and right values.
  left <- c()
  right <- c()
  
  # Move all smaller and equal values to the
  # left and bigger values to the right.
  # compare element with pivot
  left<-x[which(x <= pivot)]
  right<-x[which(x > pivot)]
  
  if (length(left) > 1)
  {
    left <- quickSort(left)
  }
  if (length(right) > 1)
  {
    right <- quickSort(right)
  }
  
  # Return the sorted values.
  return(c(left, pivot, right))
}




#Question 3 

#linear regression lecture 9
 launch <- read.csv("challenger.csv")
b <- cov(launch$temperature, launch$distress_ct)/ var(launch$temperature)

a <- mean(launch$distress_ct) - b * mean(launch$temperature)

r <- cov(launch$temperature, launch$distress_ct) / (sd(launch$temperature)*sd(launch$distress_ct))

cor(launch$temperature,launch$distress_ct)


reg(y,x) <-function( y, x){
 
   x<- as.matrix(x)
  
   x <- cbind(intercept = 1, x)
  
   solve(t(x) %*% x) %*% t(x) %*% y
}

reg( y = launch$distress_ct , x = launch$temperature)

insurance <- read.csv("insurance.csv", stringsAsFactors = TRUE)

str(insurance)
summary(insurance$charges)
hist(insurance$charges)

table(insurance$region)

#creating a correlation matrix to chack for multi=collinearity

cor(insurance[c("age", "bmi", "children","charges")])

#scatterplot matrix
pairs(insurance[c("age", "bmi", "children","charges")])

install.packages('psych')
library(psych)

pairs.panels(insurance[c("age", "bmi", "children","charges")])

ins_model <- lm(charges ~ age+ children + bmi + sex + smoker +
                  region, data =insurance)

lm(formula =charges ~. ,data = insurance)














