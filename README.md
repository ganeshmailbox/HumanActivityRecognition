## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ">Human Activity Recognition Using Smartphones</a>, The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called out in the CodeBook.md.


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">Human Activity Recognition Using Smartphones</a> [61Mb]

* <b>Description</b>: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.



## Data Cleansing /Tidy data


The data set required multiple steps for tidy-ing, here are steps that are done:

* Bring all the data sets and bind them togather. Use better names from the features.txt file.

* Interestingly there were few duplicate names in the features list. These were removed. Went for wide output option, rather than colapsing the data measures. This makes column operation easy. 

*  The varible with "mean" and "std" were searched with ignore case, and all of these variables which contains this text were used for tydiying. 

* Used merge to provide descriptive activity names to name the activities in the data set

* Utilized gsub to make the variable names more appropriate for use in plot and other functions in future. the charecters "-", ",", ")" and "(" were considered improper and they were replaced with "_" (for fist two), empty strings for brackets. Also replaced "BodyBody" with just "Body"

* Finally use dplyr to group (by activity and then subject) and get the mean for each variable for each group.

* The final output <i>alldata_merged_with_mean.txt<i> file is is to be read with read.table with header=TRUE. The variable names are provided on the top, for better readability.  

## Deliverables

There were really two submittions a) the final step 5 submission and b) providing the github and also the 
codebook and this readme file.

First you will need to check the following GitHub repository:
[https://github.com/rdpeng/ExData_Plotting1](https://github.com/rdpeng/ExData_Plotting1)

##Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

##License:

Updated version of the data provided below.

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

