# Getting and Cleaning the Human Activity Recognition Using Smartphones Data Set

One of the most exciting areas in all of data science right now is wearable computing - see for example this article. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The purpose of this repository is to collect and clean the Human Activity Recognition Using Smartphones Data Set from the UCI Machine Learning Repository by using R. The goal is to prepare tidy data that can be used for later analysis. The project was created as part of the Course „Getting And Cleaning Data“ offered by Johns Hopkins University via Coursera.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine.

### Prerequisites

In order to successfully run the script a current version of R is needed. The Human Activity Recognition Using Smartphones Data Set can be downloaded at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The script will operate in the user's current working directory and the dataset must be located in the working directory too.

### Use

1. Clone or download the repo via Github
2. Download the dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
3. Load the script 'run_analysis.R' into R
4. Run the script.

## Details on the files that exist in this repository

**run_analysis.R**

This is the script that executes the code necessary for getting and cleaning the Human Activity Recognition Using Smartphones Data Set.

**data_summary.txt**

The tidy dataset that was produced by the script 'run_analysis.R’ which contains the averages of selected features from the original dataset.

**CodeBook.md**

The code book contains detailed information on the data summary table.
 
## Built With

* [RStudio](http://www.dropwizard.io/1.0.2/docs/) - The R development environment used

## Authors

**Marius Bensley**

## Acknowledgments

* Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 
