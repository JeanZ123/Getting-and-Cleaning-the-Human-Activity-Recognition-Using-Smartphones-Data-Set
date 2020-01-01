run_analysis <- function() {

  library(dplyr)
  
  message("Loading data files into R...")

  # Download the folder to the local machine
  
  setwd("C:\\Users\\Marius\\Desktop\\Statistik\\Datasets")
  
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  file <- download.file(fileURL, "UCI HAR Dataset.zip")
  
  if (!file.exists("UCI HAR Dataset")) { 
     unzip(file) 
  }
  
  # Load the different datasets into R
  
  features <- read.table("UCI HAR Dataset\\features.txt", col.names = c("N", "Feature"))
  activities <- read.table("UCI HAR Dataset\\activity_labels.txt", col.names = c("Code", "Activity"))
  subject_test <- read.table("UCI HAR Dataset\\test/subject_test.txt", col.names = c("Subject"))
  x_test <- read.table("UCI HAR Dataset\\test\\X_test.txt", col.names = features$Feature)
  y_test <- read.table("UCI HAR Dataset\\test\\y_test.txt", col.names = "Code")
  subject_train <- read.table("UCI HAR Dataset\\train/subject_train.txt", col.names = c("Subject"))
  x_train <- read.table("UCI HAR Dataset\\train\\X_train.txt", col.names = features$Feature)
  y_train <- read.table("UCI HAR Dataset\\train\\y_train.txt", col.names = "Code")
  
  # Merge the training and the test sets to create one dataset
  
  X <- rbind(x_train, x_test)
  Y <- rbind(y_train, y_test)
  Subject <- rbind(subject_train, subject_test) 
  Dataset <- cbind(Subject, Y, X)
  
  # Extract only the measurements on the mean and standard deviation for each measurement
  
  Filtered_Data <- select(Dataset, Subject, Code, contains("mean"), contains("std"))
  
  # Use descriptive activity names to name the activities in the dataset
  
  for (i in Filtered_Data$Code) 
  {Filtered_Data$Code <- activities[Filtered_Data$Code, 2]}
  
  # Appropriately label the dataset with descriptive variable names
  
  names(Filtered_Data)[2] <- "Activity"
  names(Filtered_Data) <- names(Filtered_Data) %>% gsub("BodyBody", "Body", .) 
                                               %>% gsub("Gyro", "Gyroscope", .) 
                                               %>% gsub("Acc", "Accelerometer", .) 
                                               %>% gsub("Mag", "Magnitude", .)
                                               %>% gsub("^t", "Time", .)
                                               %>% gsub("^f", "Frequency", .)
                                               %>% gsub("tBody", "TimeBody", .)
                                               %>% gsub("mean", "Mean", .)
                                               %>% gsub("std", "STD", .)
                                               %>% gsub("freq", "Frequency", .)
                                               %>% paste0("Avrg", .)
                       
  # Create a new dataset with the average of each variable for each activity and each subject
  
  data_summary <- Filtered_Data %>% group_by(Subject, Code) %>% summarize_all(.funs="mean")
  write.table(data_summary, "data_summary.txt")
  
  message("The script was executed successfully.")
}
