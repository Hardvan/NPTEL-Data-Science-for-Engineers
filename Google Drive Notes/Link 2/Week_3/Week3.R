#1 IQ levels
library(BSDA)

#enter IQ levels for 20 patients
data = c(88, 92, 94, 94, 96, 97, 97, 97, 99, 99,
         105, 109, 109, 109, 110, 112, 112, 113, 114, 115)

#perform one sample z-test
z.test(data, mu=100, sigma.x=15)

#2 Two sample Ztest
library(BSDA)

#enter IQ levels for 20 individuals from each city
cityA = c(82, 84, 85, 89, 91, 91, 92, 94, 99, 99,
          105, 109, 109, 109, 110, 112, 112, 113, 114, 114)

cityB = c(90, 91, 91, 91, 95, 95, 99, 99, 108, 109,
          109, 114, 115, 116, 117, 117, 128, 129, 130, 133)

#perform two sample z-test to find difference in IQ levels in two cities
z.test(x=cityA, y=cityB, mu=0, sigma.x=15, sigma.y=15)

#for more information visit: 
# https://www.statology.org/z-test-in-r/


#10.Find the t-statistic for the sample data given that the population mean of the distribution is 8
samples=c(5,5,7,5,4,5,4,7,5,4)
t.test(samples, mu=8)


#11.Find F-statistic for the following sample sets generated from the same distribution
sample_1= c(8,6,5,6,7,7,4)
sample_2= c(15,15,11,9,13,5,12)
var.test(sample_1,sample_2)

#12.Find the F-statistic for the following sample sets generated from the distributions with population variances 3 and 7 respectively
sample_x = c(16,12,34,27,32,27,31)
sample_y = c(25,23,14,25,32,27,32)
var_sample_x = var(sample_x)/3
var_sample_y = var(sample_y)/7
round(var_sample_x/var_sample_y,2)

#15. A talent exam is conducted annually which has a mean score of 200 and a standard deviation of 30. If a student's Z-score is 1.50, what was his score in the exam?
mean = 200
std = 30
z = 1.5
x = mean + (z*std)
print(x)

#16. A car company purchases engine blocks from suppliers A, B, and C. Out of the 100 units supplied by A, two units were found to be defective. Similarly, out of 200 and 300 units supplied by B and C, the number units found to be defective were 10 and 15 respectively. If a quality control person of the car company picks up a block and if the selected block is from A, what is the probability that the block is defective?
A = 100
def_a = 2
A_prob_def = def_a/A
print(A_prob_def)


