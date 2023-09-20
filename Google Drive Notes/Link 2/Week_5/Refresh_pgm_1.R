#for loop - when we know how many times iterations need to run


#syntax
for(variable in vector){
  #code
  }


#Ex1
#Print Hello 5 times

v<- c(5,6,7,8,9)
for (x in v){
print("Hello")  
}


for (x in v) {
  print(x)
}

#paste -- this is used to concatenate the values
for (x in v) {
  print(paste("Hello",x))
}

for (x in v) {
  print(paste0("Hello",x))
}


for (x in v){
  if (x %% 2 == 0){
    print(paste(x, "is Even"))
  }else {
    print(paste(x,  "is Odd"))
  }
}

#Example 2
#v = c(2,3,4,5,6,7,8)
#Write a code to check if the numbers are odd or even


for (x in v){
  if (x %% 2 == 0){
    print("Even")
  }else {
    print( "Odd")
  }
  }


g=5
for (x in g){
  x=x*(x-1)
  print(x)
  
}


for(i in 1:x){
  i = x*(x-1)

}
print(i)


#Example 3
#Write a code to print the factorial of a number
num = 5
fact =1
for (x in 1:num) {
  fact=fact*x
}
print(fact)

v <- c(1,2,3,4,5)


v
v<-1:5
v



seq(1,10,2)
1:10


mat <- matrix(1:25, nrow = 5)
mat


"The value is row 1 and col1 is 1"
"The value is row 1 and col2 is 6"
"The value is row 1 and col3 is 11"




for (r in 1:nrow(mat)) {
  for (c in 1:ncol(mat)) {
    print(paste("The element at row :", r, "and column",c,"is",mat[r,c]))
  }
}

#While loop : We give the condition. Till the condition is true we keep running the loop

x<- 0

while (x<10) {
  print("Hello")
  break
  x<- x+1
}


#Functions in R
#FUnction is a set of code that can be reused to get the results
#user defined
#system defined

#syntax

name_of_func<- function(par1, par2){
#code
  return 
  }

#}



#Write a function to print the message hello

hello <- function(){
  print("Hello")
}


hello()


hello <- function(name){
  print(paste("Hello", name))
}


hello("Jack")


hello <- function(name="Tom"){
  print(paste("Hello", name))
}


hello()

#create a function that gives the product of 2 numbers

prod<- function(num1,num2){
  
  return(num1*num2)
}
or
prod(5,10)


#Write a code to create a functio that accepts 2 inputs, a number and a vector
#if the num is present in the vector then it print TRUE else FALSE


num_check <- function(num, v){
  for (ele in v) {
    if (ele==num) {
      return(TRUE)
    }
  }
  return(FALSE)
}
#write a function that counts how many times a value is present in the vector

c(2,2,3,4,5,6,7)




num_check <- function(num, v){
  count<- 0
  for (ele in v) {
    if (ele==num) {
      count=count+1
    }
  }
  return(count)
}


#Create functio...
5kg and 1 kg
5
7
1 5kg and 2 1 kg

7 kg
1 5kg and 2 1 kg

bar_count<- function(pack){
  no_ones <- pack%%5
  no_fives <- (pack-no_ones)/5
  return(paste("The ones" , no_ones, "The fives", no_fives))
}

bar_count(17)
bar_count(17)

num_check(2,c(2,2,3,4,5,6))



#Vidya

In counter,I am expecting value 2..Not able to make out mistake in code 

checker=function(n1,vec1){
  flag=0
  for(i in vec1){
    if(n1==i){
      flag=flag+1
    }
  }
  print(flag)
}
checker(8,c(2,9,18,18,81))

#Example
#Write a function that takes 3 numbers as input
#find the sum of the three numbers but if any number is divisible by 3
#then that number must not be incuded in the sum

#6,6,6

myFunc4 <- function(n1, n2, n3){
  s = 0
  if(n1%%3 != 0)
    s = s + n1
  if(n2%%3 != 0)
    s = s + n2
  if(n3%%3 != 0)
    s = s + n3
  return(s)
}
myFunc4(2,4,5)


adder <- function(a,b,c){
  out<- c(0)
  if (a%%3!=0) {
    out<- append(a,out)
  }
  if (b%%3!=0) {
    out<- append(b,out)
  }
  if (c%%3!=0) {
    out<- append(c,out)
  }
  return(sum(out))
  
}

adder(6,9,12)


#Built in functionalities
#seq --> create sequences

seq(1,10,2)
#sort -- sort a vector

v<- c(2,4,3,5,7,6,10)
sort(v)

order(v)
sort(v, decreasing = T)
v

#rev --> reverse
rev(v)


#str 

str(mtcars)
str(v)


#Append
#Merge the values

v
v1<- c(3,4,5,6)
append(v,v1)


#check the data type

mtcars



is.vector(mtcars)
is.data.frame(mtcars)
