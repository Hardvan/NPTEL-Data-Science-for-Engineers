const <- matrix(c(4, -1, -1, 2), nrow=2, byrow=TRUE)
eigen(const)

#Back to datascience problems
cars<- mtcars
#View
View(cars)


#structure of the dataframe
str(cars)

data()# all datasets available

#Sort the dataframe
#order
#order --> It gives you the indexing of the data in the sorted or

x_asc = order(cars['mpg'])
y_desc = order(-cars['mpg'])

cars[x_asc, ]

cars[y_desc, ]

#sort 
cars[order(cars$mpg), ]

cars[order(cars$mpg, cars$cyl), ]


cars[order( -cars$cyl, cars$mpg), ]


cars[order(cars$cyl,cars$mpg),]


cars[1:5,1:3]

#C:\Users\admin\Desktop\NPTEL_TA\Data_Science_Engg_July23\Week_5
bank_data = read.csv("C:/Users/admin/Desktop/NPTEL_TA/Data_Science_Engg_July23/Week_5/BankData.csv")
#No of rows
nrow(bank_data)
#No of columns
ncol(bank_data)

#colnames
colnames(bank_data)

#rownames
rownames(bank_data)
summary(bank_data)
bank_data$Gender= factor(bank_data$Gender)

bank_data$Gender= factor(bank_data$Gender)
#summary
summary(bank_data)



#sort the data frame by gender and Age

View(bank_data[order(bank_data$Gender, bank_data$Age),])


#Show the data for male customers only
View(bank_data[bank_data$Gender=="Male", ])

View(bank_data[bank_data$Region=="England", ])

#Show the data for the male customers having age>40
View(bank_data[bank_data$Age>40 & bank_data$Gender=="Male",])

#& --> and
#| --> or

View(bank_data[bank_data$Age>40 | bank_data$Gender=="Male",])

#Data frame

#Average Age
mean(bank_data$Age)

#Add new columns in Data frames

bank_data$Interest <- 0.1*bank_data$Balance

#ifelse
#balance> 50000 10% interest
#balance <50000 8%

bank_data$Interest2 <- ifelse(bank_data$Balance>50000, 
                              0.1*bank_data$Balance, 0.08*bank_data$Balance)
View(bank_data)

bank_data[3,5]<- 3 # What happens if NA
mean(bank_data$Age)

bank_data[1,5]<- NA

mean(bank_data$Age, na.rm = T)

mean(bank_data[,'Age'], na.rm = T)


x<- NA
y<-100
is.na(x)


is.na(y)

#can you all update the Age column
#missing values should be replaced with average
is.na(bank_data$Age)

bank_data$Age = ifelse(is.na(bank_data$Age),
                       mean(bank_data$Age, na.rm = T), bank_data$Age)

#List 
#It can store the multiple data structures
v<- c(10,30,50,70)
mat <- matrix(1:25, nrow = 5)
df <- cars


my_list <- list(v, mat, df)
my_list