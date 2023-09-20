#A company wants to maximize the profit for two products A and B which are sold 
#at $ 25 and $ 20 respectively. There are 1800 resource units available every day
#and product A requires 20 units while B requires 12 units. Both of these products 
#require a production time of 4 minutes and total available working hours are 8 
#in a day. What should be the production quantity for each of the products to 
#maximize profits?
require(lpSolve)
objective.in <- c(25,20)
objective.in
#Creating a matrix for constraints
const <- matrix(c(20, 12, 4, 4), nrow=2, byrow=TRUE)
const
time_constraints <- (8*60)
resource_constraints <- 1800
time_constraints
resource_constraints
# Setting rhs and direction of the constraints
rhs <- c(resource_constraints, time_constraints)
rhs
direction <- c("<=", "<=")
direction
#The final step is to find the optimal solution:
# syntax: lp(direction , objective, const.mat, const.dir, const.rhs)
optimum <-  lp(direction="max",  objective.in, const, direction,  rhs)
optimum
summary(optimum)
optimum$solution
#The optimum values for y1 and y2, i.e the number of product A and product B that should be manufactured
optimum$solution
#The maximum sales figure
optimum$objval

#for more details:
#https://www.kdnuggets.com/2018/05/optimization-using-r.html