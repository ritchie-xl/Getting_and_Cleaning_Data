## This is the script for the course project of Getting and Cleaning
# data on Coursera

library(plyr)
library(data.table)

old = getwd()
setwd("C:/Users/Lei/scripts/Getting_and_Cleaning_Data")
wd = "data"
train_wd = "data/train"
test_wd = "data/test"
getwd()

setwd(train_wd)

train_data = read.table("X_train.txt",header = F)
train_label = read.table("y_train.txt",header = F)
train_user = read.table("subject_train.txt",header=F)
train = cbind(train_data,train_label)
dim(train)

setwd(old)
setwd(test_wd)
test_data = read.table("X_test.txt",header = F)
test_label = read.table("y_test.txt",header = F)
test_user = read.table("subject_test.txt",header = F)
test = cbind(test_data,test_label)
dim(test)

setwd(old)
data = rbind(train,test)
dim(data)

setwd(wd)
header = read.table("features.txt",header = F)
dim(header)
a = c(strsplit(paste(header[,2],collapse='\t'),'\t'))

row = c(grep("-mean",header[,2]),grep("-std",header[,2]))
rows = sort(row)

c(a[[1]][rows])

setnames(test[,rows],c(a[[1]][rows]))
test[,rows]
colnames(test[,rows]) = c(a[[1]][rows])
colnames(test[,rows])

