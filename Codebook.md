# Codebook for the 'data_summary' data table

## Description of the 'data_summary' data table

### About the 'data_summary' data table

The 'data_summary' table was created by using the following data set:

> Human Activity Recognition Using Smartphones Dataset Version 1.0
> Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Smartlab - Non Linear Complex Systems Laboratory DITEN - > Università degli Studi di Genova. Via Opera Pia 11A, I-16145, Genoa, Italy. activityrecognition@smartlab.ws www.smartlab.ws

General information about the collection of the raw data is given in the 'README.txt' file of the dataset:

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

> For each record it is provided:

> - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
> - Triaxial Angular velocity from the gyroscope.
> - A 561-feature vector with time and frequency domain variables.
> - Its activity label.
> - An identifier of the subject who carried out the experiment.

The purpose of the script 'run_Analysis.R' is to collect and clean the Human Activity Recognition Data Set. The resulting 'data_summary' table is a selection of the original dataset that 1.) only contains measurements on the mean and standard deviation and 2.) creates a new dataset with the average of each variable for each activity and each subject.

### Description of the variables from the 'data_summary' data table

The first two variables, 'subject' and 'activity', are the identifiers of each row in the table. The remaining 66 variables are the averages for all the features with measurements on means and standard deviations from the original 'Human Activity Recognition Using Smartphones Dataset'.

The following is a list of all variables in the 'data_summary' table with their class and range indicated:

1. Subject, integer,	1-30, Identifier of the human subject.
2. Activity, character, Values: WALKING, WALKING UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING, Identifier of the activity performed. 
3. TimeBodyAccelerometerMean()-X, numeric,	[-1, 1],	Time domain, Average of means for body acceleration on X axis
4. TimeBodyAccelerometer-Mean()-Y, numeric,	[-1, 1],	Time domain, Average of means for body acceleration on Y axis
5. TimeBodyAccelerometer-Mean()-Z,	numeric,	[-1, 1],	Time domain, Average of means for body acceleration on Z axis
6. TimeBodyAccelerometer-STD()-X, numeric,	[-1, 1], Time domain, Average of standard deviations for body acceleration on X axis
7. TimeBodyAccelerometer-STD()-Y, numeric,	[-1, 1], Time domain, Average of standard deviations for body acceleration on Y axis
8. TimeBodyAccelerometer-STD()-Z, numeric,	[-1, 1],	Time domain, Average of standard deviations for body acceleration on Z axis
9. TimeGravityAccelerometer-Mean()-X, numeric,	[-1, 1],	Time domain, Average of means for gravity acceleration on X axis
10. TimeGravityAccelerometer-Mean()-Y, numeric,	[-1, 1],	Time domain, Average of means for gravity acceleration on Y axis
11.	TimeGravityAccelerometer-Mean()-Z,	numeric,	[-1, 1],	Time domain, Average of means for gravity acceleration on Z axis
12.	TimeGravityAccelerometer-STD()-X,	numeric,	[-1, 1],	Time domain, Average of standard deviations for gravity acceleration on X axis
13.	TimeGravityAccelerometer-STD()-Y, numeric,	[-1, 1],	Time domain, Average of standard deviations for gravity acceleration on Y axis
14.	TimeGravityAccelerometer-STD()-Z, numeric,	[-1, 1],	Time domain, Average of standard deviations for gravity acceleration on Z axis
15.	TimeBodyAccelerometerJerk-Mean()-X, numeric,	[-1, 1],	Time domain, Average of means for the jerk of body acceleration on X axis
16.	TimeBodyAccelerometerJerk-Mean()-Y,	numeric,	[-1, 1],	Time domain, Average of means for the jerk of body acceleration on Y axis
17.	TimeBodyAccelerometerJerk-Mean()-Z,	numeric,	[-1, 1],	Time domain, Average of means for the jerk of body acceleration on Z axis
18.	TimeBodyAccelerometerJerk-STD()-X, numeric,	[-1, 1],	Time domain, Average of standard deviations for the jerk of body acceleration on X axis
19.	TimeBodyAccelerometerJerk-STD()-Y, numeric,	[-1, 1],	Time domain, Average of standard deviations for the jerk of body acceleration on Y axis
20. TimeBodyAccelerometerJerk-STD()-Z, numeric,	[-1, 1],	Time domain, Average of standard deviations for the jerk of body acceleration on Z axis
21.	TimeBodyGyroscope-Mean()-X,	numeric,	[-1, 1], Time domain, Average of means for angular velocity on X axis
22.	TimeBodyGyroscope-Mean()-Y, numeric,	[-1, 1],	Time domain, Average of means for angular velocity on Y axis
23.	TimeBodyGyroscope-Mean()-Z,	numeric,	[-1, 1], Time domain, Average of means for angular velocity on Z axis
24.	TimeBodyGyroscope-STD()-X,	numeric,	[-1, 1],	Time domain, Average of standard deviations for angular velocity on X axis
25.	TimeBodyGyroscope-STD()-Y,	numeric,	[-1, 1],	Time domain, Average of standard deviations for angular velocity on Y axis
26.	TimeBodyGyroscope-STD()-Z,	numeric,	[-1, 1],	Time domain, Average of standard deviations for angular velocity on Z axis
27.	TimeBodyGyroscopeJerk-Mean()-X,	numeric,	[-1, 1],	Time domain, Average of means for the jerk of angular velocity on X axis
28.	TimeBodyGyroscopeJerk-Mean()-Y,	numeric,	[-1, 1],	Time domain, Average of means for the jerk of angular velocity on Y axis
29.	TimeBodyGyroscopeJerk-Mean()-Z, numeric,	[-1, 1],	Time domain, Average of means for the jerk of angular velocity on Z axis
30.	TimeBodyGyroscopeJerk-STD()-X,	numeric,	[-1, 1],	Time domain, Average of standard deviations for the jerk of angular velocity on X axis
31.	TimeBodyGyroscopeJerk-STD()-Y,	numeric,	[-1, 1],	Time domain, Average of standard deviations for the jerk of angular velocity on Y axis
32.	TimeBodyGyroscopeJerk-STD()-Z,	numeric,	[-1, 1],	Time domain, Average of standard deviations for the jerk of angular velocity on Z axis
33.	TimeBodyAccelerometerMagnitude-Mean(),	numeric,	[-1, 1],	Time domain, Average of means for the magnitude of body acceleration
34.	TimeBodyAccelerometerMagnitude-STD(),	numeric,	[-1, 1],	Time domain, Average of standard deviations for the magnitude of body acceleration
35.	TimeGravityAccelerometerMagnitude-Mean(),	numeric,	[-1, 1],	Time domain, Average of means for the magnitude of gravity acceleration
36.	TimeGravityAccelerometerMagnitude-STD(),	numeric,	[-1, 1],	Time domain, Average of standard deviations for the magnitude of gravity acceleration
37.	TimeBodyAccelerometerJerkMagnitude-Mean(), numeric,	[-1, 1],	Time domain, Average of means for the magnitude of jerk, of body accelaration
38.	TimeBodyAccelerometerJerkMagnitude-STD(), numeric,	[-1, 1],	Time domain, Average of standard deviations for the magnitude of jerk, of body accelaration
39.	TimeBodyGyroscopeMagnitude-Mean(),	numeric,	[-1, 1],	Time domain, Average of means for the magnitude of angular velocity
40.	TimeBodyGyroscopeMagnitude-STD(), numeric,	[-1, 1],	Time domain, Average of standard deviations for the magnitude of angular velocity
41.	TimeBodyGyroscopeJerkMagnitude-Mean(), numeric,	[-1, 1],	Time domain, Average of means for the magnitude of jerk, of the angular velocity
42.	TimeBodyGyroscopeJerkMagnitude-STD(), numeric,	[-1, 1],	Time domain, Average of standard deviations for the magnitude of jerk, of the angular velocity
43.	FrequencyBodyAccelerometer-Mean()-X, numeric,	[-1, 1],	Frequency domain, Average of means for body acceleration on X axis
44.	FrequencyBodyAccelerometer-Mean()-Y, numeric,	[-1, 1],	Frequency domain, Average of means for body acceleration on Y axis
45.	FrequencyBodyAccelerometer-Mean()-Z, numeric,	[-1, 1],	Frequency domain, Average of means for body acceleration on Z axis
46.	FrequencyBodyAccelerometer-STD()-X, numeric,	[-1, 1],	Frequency domain, Average of standard deviations for body acceleration on X axis
47.	FrequencyBodyAccelerometer-STD()-Y, numeric,	[-1, 1],	Frequency domain, Average of standard deviations for body acceleration on Y axis
48.	FrequencyBodyAccelerometer-STD()-Z,	numeric,	[-1, 1],	Frequency domain, Average of standard deviations for body acceleration on Z axis
49.	FrequencyBodyAccelerometerJerk-Mean()-X,	numeric,	[-1, 1],	Frequency domain, Average of means for the jerk of the body acceleration on X axis
50.	FrequencyBodyAccelerometerJerk-Mean()-Y, numeric,	[-1, 1],	Frequency domain, Average of means for the jerk of the body acceleration on Y axis
51.	FrequencyBodyAccelerometerJerk-Mean()-Z,	numeric,	[-1, 1],	Frequency domain, Average of means for the jerk of the body acceleration on Z axis
52.	FrequencyBodyAccelerometerJerk-STD()-X,	numeric,	[-1, 1],	Frequency domain, Average of standard deviations for the jerk of the body acceleration on X axis
53.	FrequencyBodyAccelerometerJerk-STD()-Y,	numeric,	[-1, 1],	Frequency domain, Average of standard deviations for the jerk of the body acceleration on Y axis
54. FrequencyBodyAccelerometerJerk-STD()-Z, numeric,	[-1, 1],	Frequency domain, Average of standard deviations for the jerk of the body acceleration on Z axis
55.	FrequencyBodyGyroscope-Mean()-X, numeric,	[-1, 1], Frequency domain, Average of means for the jerk of angular velocity on X axis
56. FrequencyBodyGyroscope-Mean()-Y, numeric,	[-1, 1],	Frequency domain, Average of means for the jerk of angular velocity on Y axis
57. FrequencyBodyGyroscope-Mean()-Z, numeric,	[-1, 1],	Frequency domain, Average of means for the jerk of angular velocity on Z axis
58. FrequencyBodyGyroscope-STD()-X,	numeric,	[-1, 1],	Frequency domain, Average of standard deviations for the jerk of angular velocity on X axis
59. FrequencyBodyGyroscope-STD()-Y, numeric,	[-1, 1],	Frequency domain, Average of standard deviations for the jerk of angular velocity on Y axis
60. FrequencyBodyGyroscope-STD()-Z, numeric,	[-1, 1],	Frequency domain, Average of standard deviations for the jerk of angular velocity on Z axis
61. FrequencyBodyAccelerometerMagnitude-Mean(),	numeric,	[-1, 1],	Frequency domain, Average of means for the magnitude of body acceleration
62. FrequencyBodyAccelerometerMagnitude-STD(),	numeric,	[-1, 1],	Frequency domain, Average of standard deviations for the magnitude of body acceleration
63. FrequencyBodyAccelerometerJerkMagnitude-Mean(),	numeric,	[-1, 1],	Frequency domain, Average of means for the magnitude of jerk, of body acceleration
64. FrequencyBodyAccelerometerJerkMagnitude-STD(),	numeric,	[-1, 1],	Frequency domain, Average of standard deviations for the magnitude of jerk, of body acceleration
65.	FrequencyBodyGyroscopeMagnitude-Mean(),	numeric,	[-1, 1],	Frequency domain, Average of means for the magnitude of angular velocity
66. FrequencyBodyGyroscopeMagnitude-STD(),	numeric,	[-1, 1],	Frequency domain, Average of standard deviations for the magnitude of angular velocity
67. FrequencyBodyGyroscopeJerkMagnitude-Mean(),	numeric,	[-1, 1],	Frequency domain, Average of means for the magnitude of jerk, of angular velocity
68. FrequencyBodyGyroscopeJerkMagnitude-STD(),	numeric,	[-1, 1],	Frequency domain, Average of standard deviation for the magnitude of jerk, of angular velocity

## Producing the 'data_summary' table

In order to produce the 'data_summary' table, the script 'run_analysis.R' was created. It performs the following tasks:

**Merges the training and the test sets into a single dataset**

1. Combines the following files,

- UCI HAR Dataset/train/subject_train.txt
- UCI HAR Dataset/train/X_train.txt
- UCI HAR Dataset/train/y_train.txt

from the train set by columns into a table that contains the human subject, the activity performed and the values of the features.

2. and subsequently combines the following files,

- UCI HAR Dataset/test/subject_test.txt
- UCI HAR Dataset/test/X_test.txt
- UCI HAR Dataset/test/y_test.txt

from the test set by columns into a table that contains the human subject, the activity performed and the values of the features.

3. Combines the data frames created for the test and train set into one large dataset by rows.

**Extracts only the measurements on the mean and standard deviation for each measurement**

1. Selects all the features from the dataset which are measurements of mean or standard deviation into a new data table.

**Uses descriptive activity names to name the activities in the data set**

1. Replaces the variable about activity, that contains integers from 1 to 6, with the appropriate labels provided in the 'activities' data file.

**Appropriately labels the data set with descriptive variable names**

1. Renames the second column of the data table into 'Activity'.
2. Corrects minor typos that exist in some feature names and writes out some abbreviated variable names.

**Creates a new dataset with the average of each variable for each activity and each subject**

1. Groups the tidy data table created in the previous step by 'subject' and 'activity'.
2. Calculates the average of each variable.
3. Writes the data into a text file located in the current working directory.
