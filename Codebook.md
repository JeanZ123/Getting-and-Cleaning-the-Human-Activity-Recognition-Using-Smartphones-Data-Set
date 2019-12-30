# Codebook for the 'data_summary' data table

## Description of the 'data_summary' data table

### About the 'data_summary' data table

The 'data_summary' table was created by using the following data set:

> Human Activity Recognition Using Smartphones Dataset Version 1.0
> Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Smartlab - Non Linear Complex Systems Laboratory DITEN - > Università degli Studi di Genova. Via Opera Pia 11A, I-16145, Genoa, Italy. activityrecognition@smartlab.ws www.smartlab.ws

In the official description of the dataset general information on the dataset is given:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person 
> performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone 
> (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration > and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data
> manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for 
> generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-
> width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has 
> gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and 
> gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff 
> frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency > domain.

The purpose of the script 'run_Analysis.R' is to collect and clean the Human Activity Recognition Data Set. The resulting 'Data_Summary' table is a selection of the original dataset that 1.) only contains measurements on the mean and standard deviation for each measurement and 2.) creates a new dataset with the average of each variable for each activity and each subject.

## Producing the 'data_summary' table

In order to produce the 'data_summary' table, the script 'run_analysis.R' was created. It performs the following tasks:

**Merges the training and the test sets into a single dataset**

1. Binds the following files,

- UCI HAR Dataset/train/subject_train.txt
- UCI HAR Dataset/train/X_train.txt
- UCI HAR Dataset/train/y_train.txt.

from the train set by columns into a table that contains the human subject, the activity performed and the values of the features.

2. Binds the following files,

- UCI HAR Dataset/test/subject_test.txt
- UCI HAR Dataset/test/X_test.txt
- UCI HAR Dataset/test/y_test.txt.

from the test set by columns into a table that contains the human subject, the activity performed and the values of the features.

3. Binds the data frames created for the test and train set into one large dataset by rows.

**Extracts only the measurements on the mean and standard deviation for each measurement**

1. Selects all the features from the dataset which are measurements of mean or standard deviation into a new data table.

**Uses descriptive activity names to name the activities in the data set**

1. Replaces the variable about activity, that contains integers from 1 to 6, with the appropriate labels provided in the 'activities' data file.

**Appropriately labels the data set with descriptive variable names**

1. Renames the second column of the data table into 'Activity'.
2. Corrects minor typos that exist in some feature names and writes out some abbreviated variable names.

**Creates a new dataset with the average of each variable for each activity and each subject**

1. Groups the tidy data table created in step 4 by 'subject' and 'activity'.
2. Calculates the average of each variable.
3. Writes the data into a text file located in the current working directory.
