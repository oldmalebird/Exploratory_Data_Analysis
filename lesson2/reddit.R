reddit<-read.csv('reddit.csv')
reddit
str(reddit)
table(reddit$employment.status)
summary(reddit)
levels(reddit$age.range)
library(ggplot2)
qplot(data = reddit, x = age.range)
qplot(data = reddit, x = income.range)

#setting levels of ordered factors solution
reddit$age.range <- ordered(reddit$age.range, levels = c('Under 18', '18-24','25-34','35-44','45-54','55-64','65 or Above'))

#alternate solution
reddit$age.range <- factor(reddit$age.range, levels = c('Under 18', '18-24','25-34','35-44','45-54','55-64','65 or Above'), ordered = T)
