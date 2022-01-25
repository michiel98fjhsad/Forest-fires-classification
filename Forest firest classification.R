rm(list=ls())
library(randomForest)
library(ggplot2)

fire <- data.frame(read.csv("C:/Users/michi/Downloads/Algerian_forest_fires_dataset_UPDATE.csv"))  
fire$Classes <- as.factor(fire$Classes)
#ggplot(data = fire, mapping = aes(x= Temperature, y= Classes)) + geom_point()
fire$Classes
rf.model <- randomForest(Classes~., data = fire,
                         importance = TRUE,
                         proximity = TRUE)
