#session5_assignment_5.1


#1. How many vowels are there in the names of USA States? 
data("USArrests")
library(stringr)
state<-rownames(USArrests)
statesus<-casefold(state,upper = FALSE) #convert upper case letters to lower case
head(statesus)
count=str_count(statesus, pattern = "[aeiou]")#count the numbr of vowels in each state
count
states<-(str_extract_all(statesus,pattern = "[aeiou]", simplify = TRUE))# extract all the vowels in each state
states
sum(str_count(statesus, pattern = "[aeiou]")) #sum of the vowels=177
summary(states) # summary of the vowels
numb<-table(states) #table of vowels, a=61, e=28, i=44, o=36, u=8
numb



# 2. Visualize the vowels distribution. 
barplot(numb, main="vowels distribution",
        xlab="vowels", ylab="frequency",col = c("red","yellow","green","blue","orange"))
