rm(list=ls())
library(randomForest)
library(ggplot2)
library(dplyr)

fire <- data.frame(read.csv("C:/Users/michi/Downloads/Algerian_forest_fires_dataset_UPDATE.csv"))  
fire <- fire[1:122,]
fire$Classes <- as.factor(fire$Classes)
i <- c(4:13)
fire[, i]<- apply(fire[, i], 2, 
                  function(x) as.numeric(as.character(x)))

rf.model <- randomForest(Classes~., data = fire, 
                         importance = TRUE,
                         proximity = TRUE,)
print(rf.model)
