#Question 1
c=matrix(c(1,2,3,4,5,6,7,8,9,10,11,12), nrow=3, byrow=TRUE)
matrix(1:12, nrow=3 , byrow= TRUE)
matrix(seq(from=1, to=12, by=1), nrow=3 , byrow= TRUE)
#Question 2
R1=c(1,2,3,4)
R2=c(5,6,7,8)
R3=c(9,10,11,12)
R4=c(13,14,15,16)
M =rbind(R1,R2,R3,R4)
#Question 3
#a)
A=matrix(c(3,FALSE,1,TRUE),2,2)
is.numeric(A)
#TRUE
is.logical(A)
is.character(A)
#b)
B=matrix(c(TRUE,"bob",FALSE,"harry"),2,2)
is.character(B)
#TRUE
#c)
C=matrix(c("larry",7,2,-1),2,2)
is.character(C)
#TRUE
#d)
D=matrix(c(5,TRUE,"ginger",0),2,2)
is.character(D)
#TRUE
#Question 4
#a)
T=matrix(c(18,20,15,20,19,13),3,2,dimnames=list(c("London","Paris","Stockholm"),c("Mon","Tue")))
#b)
T=matrix(c(6125.7,17140.2,15323.1,6078.2,17160.7,15323.8),3,2)
rownames(T)=c("FTSE","Dow Jones","Nikkei")
colnames(T)=c("Mon","Tue")
#Question 5
#a)
c[2,3]
#b)
c[3,]
#c)
c[,1]
#d)
c[-2,]
#e)
#f)
#g)
c[c<10 & c<10]
#Question 6
M=matrix(c(1,2,0,-3,5,9), 3,2)
#a)
dim(3*M),dim(t(M)),dim(t(M*M))
#b)
M-3
#c)
rowSums(M),colSums(M)
#Question 7
A=matrix(c(1,2,9,10),2,2)
B=matrix(c(1,3,2,-4),2,2)
#a)
A*B , B*A
#b)
det(B)
B*det(B)
#c)
eigen(B)
#Question 8
A <- matrix(data=c(2, -4, 2, -3), nrow=2, ncol=2, byrow=TRUE)    
b <- matrix(data=c(-14, 13), nrow=2, ncol=1, byrow=FALSE)
round(solve(A, b), 2)
