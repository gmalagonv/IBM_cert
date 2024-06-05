library(datasets)
#Load Data
data(mtcars)
#View first 5 rows
head(mtcars, 5)

#load ggplot package
library(ggplot2)

#create a scatterplot of displacement (disp) and miles per gallon (mpg)

ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()

#Add a title

ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")

#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)

#create boxplot of the distribution for v-shaped and straight Engine

ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none") + ggtitle("miles per gallon per engyne type")

ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5, alpha=0.7, fill = "lightblue")