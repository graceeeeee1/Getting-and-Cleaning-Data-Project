# Getting-and-Cleaning-Data-Project

##Initial data
The dataset was taken from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The following files from the initial dataset were used:
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for train set. Its range is from 1 to 30. 
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for test set. Its range is from 1 to 30. 

##R Script
1. Download the dataset.
2. Read the train and test datasets and merge them into 1 data frame.
3. Extract the data that involve only the mean and standard deviation for each measurement.
4. Label the dataset with descriptive variable names.
5. Create a tidy dataset that consists of the mean of each variable for each subject and activity.
