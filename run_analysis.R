## This is the script for the course project of Getting and Cleaning
# data on Coursera

library(plyr)
library(data.table)

# load all the data from raw file
setwd("C:/Users/Lei/scripts/Getting_and_Cleaning_Data/data")

train_data = read.table("X_train.txt",header = F)
train_label = read.table("y_train.txt",header = F)
train_user = read.table("subject_train.txt",header=F)
#Join train data with train data activity label
train = cbind(train_data,train_label,train_user)

test_data = read.table("X_test.txt",header = F)
test_label = read.table("y_test.txt",header = F)
test_user = read.table("subject_test.txt",header = F)
#Join test data with test data activity label
test = cbind(test_data,test_label,test_user)

#Combine all the testing and training data
data = rbind(train,test)

# Get the column names for the combined data
# Remove the "-" and "()" in the colnames
header = read.table("features.txt",header = F)
tmp1 = gsub("()","",header[,2],fixed=T)
tmp2 = gsub("-","",tmp1,fixed=F)
colnames = tmp2

cols = c(grep("mean",header[,2]),grep("std",header[,2]))
cols = sort(cols)

names(data) = c(colnames,"activity","subject")
extracted_data = data.table(data[,c(cols,dim(data)[2]-1, dim(data)[2])],key="activity")
head(extracted_data)
act = data.table(read.table("activity_labels.txt",header = F))
act = data.table(act)
setnames(act,c("activity","activityDesc"))
# Join the activity description to its label
setkey(extracted_data,activity)
setkey(act,activity)
data_step4 = merge(extracted_data,act,all=T)

#remove the activity column and keep the description column
data_step4$activity=NULL

data_step5 = group_by(data_step4,user,activityDesc)
old_names = names(data_step5)
names(data_step5)
a = summarise(data_step5,mean(tBodyAccmeanY))
b = summarise(data_step5,mean(tBodyAccmeanX))
cbind(data.frame(a),data.frame(b)[,3])



