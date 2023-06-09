#Factors and catergorical data

#Making an ordered factor for grades 

grades <- factor(c("A", "C", "C", "E", "D", "B", "B"), 
       + levels = c("E", "D", "C", "B", "A"),
+ labels = c("Poor", "Below_Average", "Average", "Good", "Excellent"),
+ ordered = TRUE)

#Checking if Second student perfomed better than the fifth student

grades[2] > grades[5]