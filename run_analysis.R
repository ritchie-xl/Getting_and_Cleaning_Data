## This is the script for the course project of Getting and Cleaning
# data on Coursera

wd = "~/scripts/Getting_and_Cleaning_Data/data"
train_wd = "~/scripts/Getting_and_Cleaning_Data/data/train"
test_wd = "~/scripts/Getting_and_Cleaning_Data/data/test"
getwd()


setwd(train_wd)

train_data = read.table("X_train.txt",header = F)
train_label = read.table("y_train.txt",header = F)
train_user = read.table("subject_train.txt",header=F)
train = cbind(train_user,train_data,train_label)
dim(train)

setwd(test_wd)
test_data = read.table("X_test.txt",header = F)
test_label = read.table("y_test.txt",header = F)
test_user = read.table("subject_test.txt",header = F)
test = cbind(test_user,test_data,test_label)

setwd(wd)
data = rbind(train,test)
dim(data)