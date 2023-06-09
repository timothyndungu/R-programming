# Question 3 (a)
#what is the name of the function

# what is the remainder when you divide 7 by 2
7%%2
7%%7

x <- 1:10
x
for (i in x){
  if (100%%i==0){
    print(i)
  }
}


composite_2_to_d <- function(n, d){
  # creating an empty vector
  divisors <- c()
  # iterate through the values 2:d
  for (i in 2:d){
    if (n%%i==0){
      divisors = c(divisors, i)
    }
  }
  if (length(divisors)==0){
    print(FALSE)
  }else{
    print(TRUE)
  }
  
}
composite_2_to_d(11,2)


1,2,3,4,5
# question 3b
prime <- function(n){
  divisors <- c()
  
  for (i in 1:(n)){
    if (n%%i==0){
      divisors = c(divisors, i)
    }
  }
  
  if (length(divisors)==2){
    print(TRUE)
  }else{
    FALSE
  }
  
}
prime(13)


# create and naming a matrix
# indexing a matrix



