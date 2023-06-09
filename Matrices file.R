#D(i)
m=matrix(c(12.3,11,14,5,11.7,12,19,2.3,22),3,3)
m
rownames(m)=c("a","d","c")
colnames(m)=c("x","y","z")
#D(ii)
m=matrix(c(12.3,11,14,5,11.7,12,19,2.3,22),3,3,dimnames = list(c("a","d","c"),c("x","y","z")))
m
#E
n=123
rev_number=function(n){
  m=strsplit(as.character(n),"")
  if (m==rev(m)) 
    print("reversed number")
}
#f
a=matrix(c(-2,-2,4,-4,1,2,2,2,5),3,3)
a
eigen(a)
#g
seq(40,90,length=20)
checks=function(x)
  if(x%%3==0){
    print("divisible")
  }else{
    print("not divisible")
  }
x=a
#h
#(i)
unique()
#(ii)
l=c(5,4,13,2,5,11,9,3)
s=c(1,2,5,6,11,23)
unique(l)
unique(s)
