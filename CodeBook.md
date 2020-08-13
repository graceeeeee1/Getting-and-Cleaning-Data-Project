# Getting and Cleaning Data Project

## Initial Data
The initial dataset has the following variables:
1. subject - ID of participant
2. activity - ID of activity type
3. Mean and standard deviation of the following variables:
  - tBodyAcc-XYZ
  - tGravityAcc-XYZ
  - tBodyAccJerk-XYZ
  - tBodyGyro-XYZ
  - tBodyGyroJerk-XYZ
  - tBodyAccMag
  - tGravityAccMag
  - tBodyAccJerkMag
  - tBodyGyroMag
  - tBodyGyroJerkMag
  - fBodyAcc-XYZ
  - fBodyAccJerk-XYZ
  - fBodyGyro-XYZ
  - fBodyAccMag
  - fBodyAccJerkMag
  - fBodyGyroMag
  - fBodyGyroJerkMag
  
## Transformations
The initial dataset was modified by the following:
- Merged the training and the test sets to create one data set.
- Extracted only the measurements on the mean and standard deviation for each measurement.
- Used descriptive activity names to name the activities in the data set
- Appropriately labelled the data set with descriptive variable names.
- Created a second, independent tidy data set with the average of each variable for each activity and each subject.
