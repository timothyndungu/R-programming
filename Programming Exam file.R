
#Qn 1(D)
a=matrix(c(-2,-2,4,-4,1,2,2,2,5),3,3)
a
eigen(a)

#Qn 1(E)
reverser <- function(n){
  
  first_digit <- as.integer(n/100)
  second_digit <- (as.integer(n/10)%%10)
  third_digit <- (n%%10)
  
  if(as.integer(n/1000) == 0 & as.integer(n/100) != 0){
    return(third_digit * 100 + second_digit * 10 + first_digit)
  }else{
    return("you did not input 3-digit number")
  }
}
reverser(231)
reverser(2675)

#Qn 1(F)
binary_to_decimal=function(bits){
  if
}

#Qn 1(G)(i)
prime=function(n){
  divisors=c()
   for (i in 1:(n)){
    if (n%%i==0){
      divisors = c(divisors, i)
    }
  }
  if (length(divisors)==2){
    print(TRUE)
  }else{
    print(FALSE)
  }
}
prime(13)

#Qn 1(G)(ii)
no_of_divisors<- function(n, t){
  # creating an empty vector
  divisors <- c()
  # iterate through the values 2:t
  for (i in 2:t){
    if (n%%i==0){
      divisors = c(divisors, i)
    }
  }
  length(divisors)
  
}
#Qn 1(G)(iii)
even_or_odd=function(n,t){
  divisors <- c()
  # iterate through the values 2:t
  for (i in 2:t){
    if (n%%i==0){
      divisors = c(divisors, i)
    }
  }
}
    


#Qn 5(B)(i)
duplicates=function(x){
  if(length(unique(x) != length(x))){
    return(unique(x))
  }else{
    return("None")
  }
}

#Qn 5(B)(ii)
L=list(5,4,13,2,5,11,9,3)
duplicates(L)

S=list(1,2,5,6,11,23)
duplicates(S)


#Qn 5(C)
#write the function down
longest_winning_streak=function(results){
  #get the substring of W's out of the string
  substr(results,"W","W")
  
  #get the longest substring and get how long
  max(nchar(substr(results,"W","W")))
}
longest_winning_streak("WWLLW")




#Qn 5(D)

replace_digits <-function(num ,digit, new_digit){
  #check the highest place value of the number
  #Search each number in num for digit and replace with new_digit
  
  # 1. we loop through the digits
  # 2. If digit = d we replace new_digit
  # 3. return output
  digit_vec <- c()
  while(num > 1){
    rem=num%%10
    digit_vec <- c(as.integer(rem), digit_vec)
    num = num/10
  }
  #Creating a vector of all the digits
  digit_vec[digit_vec == digit] <- new_digit
  #replacing 
  
  return(as.numeric(paste(digit_vec, collapse = "")))
  
  
}



replace_digits(1349848, 9, 4)
replace_digits(5,2,3)
replace_digits(45261,1,1)
