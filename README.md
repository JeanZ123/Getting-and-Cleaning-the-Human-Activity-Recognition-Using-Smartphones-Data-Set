# Getting and Cleaning the Human Activity Recognition Using Smartphones Data Set

One of the most exciting areas in all of data science right now is wearable computing - see for example this article. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The purpose of this repository is to collect and clean the Human Activity Recognition Using Smartphones Data Set from the UCI Machine Learning Repository by using R. The goal is to prepare tidy data that can be used for later analysis. The project was created as part of the Course „Getting And Cleaning Data“ offered by Johns Hopkins University via Coursera.

### Use

To read the table back into R you can use the following command:
```
data_summary <- read.table(file = "data_summary.txt",
                           header = TRUE, check.names = FALSE, dec = ".") 
```
## Details on the files that exist in this repository

**run_analysis.R**

This is the script that executes the code necessary for getting and cleaning the Human Activity Recognition Using Smartphones Data Set.

**data_summary.txt**

The tidy dataset that was produced by the script 'run_analysis.R’ which contains the averages of selected features from the original dataset.

**CodeBook.md**

The code book contains detailed information on the data summary table.
 
## Built With

* [RStudio](http://www.) - The R development environment used

## Authors

**Marius Bensley**

## Acknowledgments

* Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 
