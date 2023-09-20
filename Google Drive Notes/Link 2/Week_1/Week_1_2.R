# 1.Choose the variable name(s) that are valid in R.
#emp_name = "Ram"
#emp.name = "Ram"
#empname1 = "Ram"
#1empname = "Ram"


# 2. The function ls() in R will
ls()


# 3. Consider the following code in R.
find.function<- function(a){
  for(i in 1:a){
    b <- i^2
    print(b)
  }
}
find.function(4)


#Create the data frame using the code given below and answer questions 5 and 6
student_data = data.frame(student_id=c(1:4), student_name=c('Ram','Harish','Pradeep','Rajesh'))

# 5. Choose the correct command to add a column named student_dept to the dataframe student_data
#student_data$student_id
#student_data$student_dept=c("Commerce","Biology","English","Tamil")
#student_data["student_dept"]=c("Commerce","Biology","English","Tamil")
#student_dept=student_data[c("Commerce","Biology","English","Tamil")]
# None of the above


#6. Choose the correct command to access the element Tamil in the dataframe student_data
#student_data[[4]]
#student_data[[2]][3]
#student_data[[3]][4]
#None of the above


#7. State whether the given statement is True or False.
#The library reshape2 is based around two key functions named melt and cast.


# 9.Melt and Dcast
library(dplyr)
library(reshape2)
student_scores = data.frame(Name=c('Ram','Prabhu','Sita','Santosh','Lohith'),Mathematics=c(85,70,90,95,80),English=c(80,79,73,90,93),Science=c(79,96,95,80,87))
#melt(student_scores, id.vars = c("Name"), measure.vars = c("Mathematics", "English","Science"))
#melt(student_scores, id.vars = c("Name","Mathematics"), measure.vars = c("English","Science"))
student_melt= melt(student_scores, id.vars = c("Name"), measure.vars = c("Mathematics", "English","Science")) 
dcast(student_melt, variable+Name ~ . , value.var="value")


# 10. The command to check if a value is of numeric data type is ___
#typeof() function in R Language is used to return the types of data used as the arguments.
is.numeric(student_name)
