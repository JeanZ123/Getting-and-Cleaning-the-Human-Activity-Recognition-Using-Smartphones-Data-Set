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

Check the README.txt file for further details about this dataset. 

More informations about the original data set can be found here.

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The purpose of the script 'run_Analysis.R' is to collect and clean the Human Activity Recognition Using Smartphones Data Set from the UCI Machine Learning Repository in R. The resulting 'Data_Summary' table is a selection of the original dataset that only contains measurements on the mean and standard deviation for each measurement and creates a new dataset with the average of each variable for each activity and each subject.
