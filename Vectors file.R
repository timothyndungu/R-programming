#VECTORS
#Qn 1
v=c(21,22,23,24,25,26,27,28,29,30)
v=21:30
seq(21,30)

#Qn 2
d=c(3,2,FALSE)
is.numeric(d)
is.logical(d)
is.character(d)
class(d)
#numeric
a=c(TRUE,"bob",FALSE)
is.logical(a)
is.numeric(a)
is.character(a)
#character
b=c("larry",7,2)
is.numeric(b)
is.character(b)
is.logical(b)
#character
c=c(5,TRUE,"ginger")
is.numeric(c)
is.logical(c)
is.character(c)
#character

#Qn 3
seq(70,85)
seq(50,14,-3)
seq(1,31,length=7)

#Qn 4
temperature=c("London"=18,"Paris"=20,"Stockholm"=15)
temperature
indices=c("FTSE_100"=6125.7,"Dow_Jones"=17140.20,"Nikkei_225"=15323.10)
indices

#Qn 5
v[3]
v[c(4,7)]
v[6:10]
v[-5]
v[-c(2,8)]
v[-(3:6)]
v[v<27]

#Qn 6
a=1:6
b=c(0,1)
c=c(5,1,3,2)
b-1
b*c
a+b
a^b
a/c

#Qn 7
n=rnorm(1000)
m=n[n>2]
length(n)
length(m)
length(m)/length(n)
#P(Z>2)=0.025