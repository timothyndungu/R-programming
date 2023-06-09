#function that adds two numbers

#sum_two_numbers(5,6)

sum_two_numbers<-function(a,b){
  sums=a+b
  return(sums)
}

sum_two_numbers(5,6)
#that checks is sumber is even

even_checker<-function(x){
  if(x%%2==0){
    return(TRUE)
  }else{
    return(FALSE)
  }
}
a=sum_two_numbers(6,6)
even_checker(a)


sum_two_numbers(5,6)

sum
sum_three_numbers<-function(a,b,c,d){
  return(a+b+c+d)
}


?sum


#define x
x=-2

# check if x is greater than 0

if(x>0){
  print("x is a positive number")
}else{
  print("x is a negative number")
}

#function checks(x): checks(9), checks(-2)

checks<-function(x){
  if(x>0){
    print("x is a positive number")
  }else{
    print("x is a negative number")
  }
}


# check if age is greater than 18, tell the person they are eligble to vote or not.

age<-23

if(age>=18){
  print("eligible to vote")
}else{
  print("Not eligible to vote")
}
voters<-function(age){
  if(age>=18){
    print("eligible to vote")
  }else{
    print("Not eligible to vote")
  }
}

voters(11)
# check if x is positive or negative or zero

x=0

if(x>0){
  print("x is a positive number")
}
if(x>0){
  print("x is a positive number")
}
if(x>0){
  print("x is a positive number")
}
if(x>0){
  print("x is a positive number")
}


if(x>0){
  print("x is a positive number")
}else if(x<0){
  print("x is a negative number")
}else if(x=50){
  print("x is a negative number")
}else if(x<0){
  print("x is a negative number")
}else if(x<0){
  print("x is a negative number")
}else{
  print("x is zero")
}

# check if x is positive then check if x is even or odd for both cases

x=-31

if(x>=0){
  if(x%%2==0){
    if(){
      if(){
        
      }
    }
  }
  
  
}else{
  if(x%%2==0){
    print("negative even")
  }else{
    print("negative odd")
  }
}

#print the numbers from 1 to ten

x=1

while(x<=10){
  print(x)
  if(x%%2==0){
    next
  }
  x=x+1
}



a=c(1,2,3,4,5,6,7,8]
a[1]

# while loop to calculate sum

x=10

sum=0

while (x>0) {
  sum=sum+x
  x=x-1
}
print(sum)



# take input from the user
num = as.integer(readline(prompt = "Enter a number: "))
if(num < 0) {
  print("Enter a positive number")
} else {
  sum = 0
  # use while loop to iterate until zero
  while(num > 0) {
    sum = sum + num
    num = num - 1
  }
  print(paste("The sum is", sum))
}

nums=[2.3,46,55,12,45,6,9]

#while Loop With break Statement

#while Loop With next Statement, skip iteration if number is even



# for loop to print all elements in numbers

numbers=c(2,3,4,4,4,556,556,57,67,7)
numbers


#for loops to print the numbers from 1 to 10



x=1
while (x<>10) {
  print(x)
  x=x+1
}






#Count the Number of Even Numbers in a list
#for Loop With break Statement
#for Loop With next Statement, use next to skip odd numbers


#Nested for Loops, check if sum is even


for(i in 1:5){
  for (j in 3:9) {
    if((i+j)<10){
      print(paste(i,j))
    }
  }
}

#functions
a=c()
a[1]=1

a=c(1,2,3,4,5,6,7,8)
a[1]





4%%10

a=1+2+
3
a
#function to make SIN

make_sin<-function(x){
  
  #obtain the individual digits
  first=as.integer(x*10^-7)
  second=(as.integer(x*10^-6))%%10
  third=(as.integer(x*10^-5))%%10
  fourth=(as.integer(x*10^-4))%%10
  fifth=(as.integer(x*10^-3))%%10
  sixth=(as.integer(x*10^-2))%%10
  seventh=(as.integer(x*10^-1))%%10
  eigth=(as.integer(x*10^-0))%%10
  
  #sums the odd number digits
  sum_of_odds=first+third+fifth+seventh
  
  #get double of even placed digits
  d_second=second*2
  d_fourth=fourth*2
  d_sixth=sixth*2
  d_eigth=eigth*2
  
  #Get sum of digits of resultant numbers
  sum_of_evens=as.integer(d_second/10)+d_second%%10+
    as.integer(d_fourth/10)+d_fourth%%10+
    as.integer(d_sixth/10)+d_sixth%%10+
    as.integer(d_eigth/10)+d_eigth%%10
  
  #sum of all evens and odds
  
  sums=sum_of_odds+sum_of_evens
  
  #get last digit of resultant sum
  
  last_digit=(10-(sums%%10))%%10
  
  sin_num=x*10+last_digit
  
  return(sin_num)
}
format(make_sin(64075429),scientific = FALSE) 
format(make_sin(26600000),scientific = FALSE)
format(make_sin(99999999),scientific = FALSE)
format(make_sin(00000000), scientific = FALSE)

