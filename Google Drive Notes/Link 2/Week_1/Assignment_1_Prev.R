#1. The function “ ls()” in R will
ls()

#2. In the R code given below, the value of "i” at which the loop breaks is ---------
room.temperature <- as.integer(readline(prompt="Enter room temperature in degree celsius:"))

if(room.temperature <19){
  print("The room is chilly. Please turn the heater on!")
}else{
  if(room.temperature >= 19 && room.temperature <=25){
    print("The room is warm")
    print("Enjoy the stay")
  }else{
    print("The room is hot")
    print("Please turn the air conditioning on!")
  }
}


#3.Consider the code below to create a dataframe city_data:
name<-c('City A', 'City B', 'City C')
weather<-c('Sunny', 'Cloudy', 'Rainy')
City_data<-data.frame(name, weather)

#Choose the correct answer based on the output expected on running the below code.
City_data$weather[City_data$name == 'City C'] <- 'Snowy'
print(City_data)


#4.Consider the code given below.
city_weather = list("City A", "City B", "City C", c("Sunny","Cloudy","Rainy"))
#Choose the correct command to access the variable “Cloudy” 
#city_weather[[4]][2]
#city_weather[[5]]
#city_weather[[2]][2]
#None of the above


#5.Consider the following code.
A=matrix(c(1:42),nrow = 6, ncol = 7, byrow = T)
B=A[-2,]
#Based on the output of the above code, choose the correct options from the following
#a.B is a matrix consisting of only elements of the second row of matrix A
#b.B is a matrix consisting of same elements as that of A
#c.The code raises an error
#d.B is a matrix consisting of all elements of A excluding the second row

#6. The parameter “collapse” in the function paste()
#a. adjusts the display of the string to left, right or center
#b. add space in between two strings
#c. eliminates the space in between two strings
#d. eliminates the space within two words in a string
paste(1,'two',3,'four',5,'six')
paste(1,'two',3,'four',5,'six',sep = "_")
paste(1,'two',3,'four',5,'six',sep = "&")
paste(c(1,2,3,4,5,6,7,8),collapse = "_")
paste(c(1,2,3,4,5,6,7,8),collapse = " ")
paste(c('Rita','Sam','John','Jat','Cook','Reaper'),collapse = ' and ')
paste(c('a','b'),1:10,sep = '_',collapse = ' and ')
paste(c('John','Ray'),1:5,sep = '=',collapse = ' and ')

paste0('df',1:5,collapse = ' > ')

#If a value is specified for collapse, 
#the values in the result are then concatenated into a single string, 
#with the elements being separated by the value of collapse.
# More ref: https://www.digitalocean.com/community/tutorials/paste-in-r


#7. Consider the following code in R.
find.function <- function(a){
  for(i in 1:a){
    b <- i^2
    if(b>9){
      break
    }
    print(b)
    }
}
# find.function <- function(a){
#   for(i in 1:a){
#     b <- i^2
#     if(b>9){
#       break
#     }
#     print(b)
#   }
# }

#8. The operator %in% is used for
#a. multiplication of a matrix with its transpose
#b. generating a sequence of numbers in a vector
#c. identifying if an element belongs to a vector
#d. none of the above

#9. The output of compiling and executing the following code in R would be
v_name <- c("Green", "apple")
cnt <- 2
repeat{
  print(v_name)
  cnt <- cnt+1
  if(cnt > 5){
    break
  }}

#10. The “next” statement in R programming is useful
#a. for skipping the current iteration of a loop without terminating it.
#b. for terminating the current iteration of a loop.
#c. for evaluating the current iteration of a loop without terminating it.
#d. None of the above

# next halts the processing of the current iteration and advances the looping index. 
# Both break and next apply only to the innermost of nested loops.

