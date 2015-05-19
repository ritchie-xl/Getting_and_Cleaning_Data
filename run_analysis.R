## This is the script for the course project of Getting and Cleaning
# data on Coursera

library(plyr)
library(data.table)

old = getwd()
setwd("C:/Users/Lei/scripts/Getting_and_Cleaning_Data")
wd = "data"
train_wd = "data/train"
test_wd = "test"
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
colnames = c(strsplit(paste(header[,2],collapse='\t'),'\t'))

cols = c(grep("-mean",header[,2]),grep("-std",header[,2]))
cols = sort(cols)
names(data) = c(colnames[[1]],"activity")
extracted_data = data.table(data[,c(rows,dim(test)[2])],key="activity")
dim(extracted_data)

dir()
act = data.table(read.table("activity_labels.txt",header = F))
act = data.table(activity)
setnames(act,c("activity","activityDesc"))
setkey(extracted_data,activity)
setkey(act,activity)

data_step4 = merge(extracted_data,act,all=T)
dim(data_step4)
data_step4$activity=NULL


