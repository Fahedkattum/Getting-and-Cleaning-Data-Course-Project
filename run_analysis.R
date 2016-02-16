#run_analysis.R

#reading files

features<- read.table("features.txt")
activity_labels<- read.table("activity_labels.txt")


testx<- read.table("./test/X_test.txt")
testY<- read.table("./test/y_test.txt")
testsubject<- read.table("./test/subject_test.txt")


trainx<- read.table("./train/X_train.txt")
trainy<- read.table("./train/y_train.txt")
trainsubject<- read.table("./train/subject_train.txt")

#merging subject, activity and features. 

subjectdata<- rbind(testsubject,trainsubject)
activitydata<- rbind(testY,trainy)
featuresdata<- rbind(testx,trainx)

#labeling data with descriptive variable names

names(subjectdata)<- c("subject")
names(activitydata)<- c("activity")
names(featuresdata)<- features$V2

#merging data of test and train in one data set
subdata<- cbind(subjectdata,activitydata)
alldata<- cbind(featuresdata,subdata)

#selecting data with Mean and STD features only and combining in one dataset

featureswanted <- features$V2[grep(".*mean.*|.*std.*", features$V2)]
selecteddata<- c(as.character(featureswanted), "subject", "activity")
alldata<- subset(alldata, select = selecteddata)

#using descriptive activity names

alldata$activity <- factor(alldata$activity, levels = activity_labels$V1, labels = activity_labels$V2)
alldata$subject<- factor(alldata$subject)

names(alldata)<- gsub("mean","Mean", names(alldata))
names(alldata)<- gsub("std","STD", names(alldata))
names(alldata)<- gsub("[-()]","", names(alldata))
names(alldata)<- gsub("^t", "time", names(alldata))
names(alldata)<- gsub("^f", "frequency", names(alldata))
names(alldata)<- gsub("BodyBody", "Body", names(alldata))

#creating a second independent dataset with AVG for each variable

library(reshape2)
alldatamelt<-   melt(alldata, id = c("subject", "activity"))

tidy_data<- dcast(alldatamelt, subject+activity~variable, mean)

write.table(tidy_data, file = "tidy_data.txt",row.name=FALSE)
