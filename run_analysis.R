#(STEP 1) Merges the training and the test sets to create one data set
#(STEP 4) Appropriately labels the data set with descriptive variable names
features = read.table("./UCI HAR Dataset/features.txt")
activities = read.table("./UCI HAR Dataset/activity_labels.txt")
#train data
train = read.table("./UCI HAR Dataset/train/X_train.txt") #features data
colnames(train) = features$V2 #descriptive variable names
ytrain = read.table("./UCI HAR Dataset/train/y_train.txt") #activity labels
train$activity = ytrain$V1 #descriptive variable names
subjecttrain = read.table("./UCI HAR Dataset/train/subject_train.txt") #subjects
train$subject = factor(subjecttrain$V1) #descriptive variable names
#test data
test = read.table("./UCI HAR Dataset/test/X_test.txt") #features data
colnames(test) = features$V2 #descriptive variable names
ytest = read.table("./UCI HAR Dataset/test/y_test.txt") #activity labels
test$activity = ytest$V1 #descriptive variable names
subjecttest = read.table("./UCI HAR Dataset/test/subject_test.txt") #subjects
test$subject = factor(subjecttest$V1) #descriptive variable names
#merge into 1 dataset
data = rbind(test, train)



#(STEP 2) Extracts only the measurements on the mean and standard deviation for each measurement
columnnames = colnames(data)
filteredcolumnnames = grep("std\\(\\)|mean\\(\\)|activity|subject", columnnames, value = TRUE)
filtereddata = data[, filteredcolumnnames]



#(STEP 3) Uses descriptive activity names to name the activities in the data set
filtereddata$activitylabel = factor(filtereddata$activity, labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))



#(STEP 5) creates a second, independent tidy data set with the average of each variable for each activity and each subject
library(reshape2)
meltdata = melt(filtereddata, id = c("subject", "activitylabel"))
tidydata = dcast(meltdata, subject + activitylabel ~ variable, mean)
write.table(tidydata, file = "tidydataset.txt", row.names = FALSE)





