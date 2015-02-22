## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ">Human Activity Recognition Using Smartphones</a>, The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called out in the CodeBook.md.


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">Human Activity Recognition Using Smartphones</a> [61Mb]

* <b>Description</b>: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.



## Varibles Standards and Information

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc_XYZ and tGyro_XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc_XYZ and tGravityAcc_XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk_XYZ and tBodyGyroJerk_XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc_XYZ, fBodyAccJerk_XYZ, fBodyGyro_XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'_XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc_XYZ
* tGravityAcc_XYZ
* tBodyAccJerk_XYZ
* tBodyGyro_XYZ
* tBodyGyroJerk_XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc_XYZ
* fBodyAccJerk_XYZ
* fBodyGyro_XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean: Mean value
* std: Standard deviation
* mad: Median absolute deviation 
* max: Largest value in array
* min: Smallest value in array
* sma: Signal magnitude area
* energy: Energy measure. Sum of the squares divided by the number of values. 
* iqr: Interquartile range 
* entropy: Signal entropy
* arCoeff: Autorregresion coefficients with Burg order equal to 4
* correlation: correlation coefficient between two signals
* maxInds: index of the frequency component with largest magnitude
* meanFreq: Weighted average of the frequency components to obtain a mean frequency
* skewness: skewness of the frequency domain signal 
* kurtosis: kurtosis of the frequency domain signal 
* bandsEnergy: Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle: Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

## List of all variable used in the program

<ol>
<li> activity_label
<li> Subject
<li> Labels - This essentially activity id
<li> tBodyAcc_mean_X
<li> tBodyAcc_mean_Y
<li> tBodyAcc_mean_Z
<li> tBodyAcc_std_X
<li> tBodyAcc_std_Y
<li> tBodyAcc_std_Z
<li> tGravityAcc_mean_X
<li> tGravityAcc_mean_Y
<li> tGravityAcc_mean_Z
<li> tGravityAcc_std_X
<li> tGravityAcc_std_Y
<li> tGravityAcc_std_Z
<li> tBodyAccJerk_mean_X
<li> tBodyAccJerk_mean_Y
<li> tBodyAccJerk_mean_Z
<li> tBodyAccJerk_std_X
<li> tBodyAccJerk_std_Y
<li> tBodyAccJerk_std_Z
<li> tBodyGyro_mean_X
<li> tBodyGyro_mean_Y
<li> tBodyGyro_mean_Z
<li> tBodyGyro_std_X
<li> tBodyGyro_std_Y
<li> tBodyGyro_std_Z
<li> tBodyGyroJerk_mean_X
<li> tBodyGyroJerk_mean_Y
<li> tBodyGyroJerk_mean_Z
<li> tBodyGyroJerk_std_X
<li> tBodyGyroJerk_std_Y
<li> tBodyGyroJerk_std_Z
<li> tBodyAccMag_mean
<li> tBodyAccMag_std
<li> tGravityAccMag_mean
<li> tGravityAccMag_std
<li> tBodyAccJerkMag_mean
<li> tBodyAccJerkMag_std
<li> tBodyGyroMag_mean
<li> tBodyGyroMag_std
<li> tBodyGyroJerkMag_mean
<li> tBodyGyroJerkMag_std
<li> fBodyAcc_mean_X
<li> fBodyAcc_mean_Y
<li> fBodyAcc_mean_Z
<li> fBodyAcc_std_X
<li> fBodyAcc_std_Y
<li> fBodyAcc_std_Z
<li> fBodyAcc_meanFreq_X
<li> fBodyAcc_meanFreq_Y
<li> fBodyAcc_meanFreq_Z
<li> fBodyAccJerk_mean_X
<li> fBodyAccJerk_mean_Y
<li> fBodyAccJerk_mean_Z
<li> fBodyAccJerk_std_X
<li> fBodyAccJerk_std_Y
<li> fBodyAccJerk_std_Z
<li> fBodyAccJerk_meanFreq_X
<li> fBodyAccJerk_meanFreq_Y
<li> fBodyAccJerk_meanFreq_Z
<li> fBodyGyro_mean_X
<li> fBodyGyro_mean_Y
<li> fBodyGyro_mean_Z
<li> fBodyGyro_std_X
<li> fBodyGyro_std_Y
<li> fBodyGyro_std_Z
<li> fBodyGyro_meanFreq_X
<li> fBodyGyro_meanFreq_Y
<li> fBodyGyro_meanFreq_Z
<li> fBodyAccMag_mean
<li> fBodyAccMag_std
<li> fBodyAccMag_meanFreq
<li> fBodyAccJerkMag_mean
<li> fBodyAccJerkMag_std
<li> fBodyAccJerkMag_meanFreq
<li> fBodyGyroMag_mean
<li> fBodyGyroMag_std
<li> fBodyGyroMag_meanFreq
<li> fBodyGyroJerkMag_mean
<li> fBodyGyroJerkMag_std
<li> fBodyGyroJerkMag_meanFreq
<li> angletBodyAccMean_gravity
<li> angletBodyAccJerkMean_gravityMean
<li> angletBodyGyroMean_gravityMean
<li> angletBodyGyroJerkMean_gravityMean
<li> angleX_gravityMean
<li> angleY_gravityMean
<li> angleZ_gravityMean
</ol>
