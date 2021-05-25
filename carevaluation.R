# On this project, I will work on car evaluation prediction. First of all, the dataset I will use belongs to Marko Bohanec and Blaz Zupan. 
# We have 6 features, one target value and 1728 examples. 
# I will contiune step by step. 

# Step 0 Introduction
# I will import some library which are helpfull for us. I have missing some library that's why before the import 
# these library I installed that missing packages. 
# For installing you can use tools part or you can type this function >> install.packages()

library(tidyverse)
library(readr)
library(ggplot2)
library(caret)
library(randomForest)
library(rpart)
library(rpart.plot)

# Step 1 Data Reading
# On this part I will upload dataset and looking more carefull of them.
# I will look colomn names, missing values and giving summary about dataset.

cardata <- read.csv("car_evaluation.csv")

colnames(cardata)
## For better understanding I will change colomn names.

colnames(cardata) = c('Buying','Maint','Doors','Person','LugBoot','Safety','Evaluation')
colnames(cardata)
## Now we can understand more easily our features. 

#Checking missing values on each column 
colSums(is.na(cardata))

# Summary about dataset 
summary(cardata)
glimpse(cardata) #On dataset everything is categorical  glimpse function is a useful for string values.

