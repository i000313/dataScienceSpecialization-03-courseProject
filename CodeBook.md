Tidy Dataset - Code Book 
=========================

This code book describes:
- the data;
- the work performed to clean up the data;
- the variables.

# The data

The tidy dataset (tidy_dataset.csv) is a sub set of the **Human Activity Recognition Using Smartphones Dataset**.
The tidy dataset is compound of means and stand deviations of a subset of variable from the original dataset.

# Work Performed to Clean Up the Data

The tidy dataset was created by the **run_analysis.R** script. This script performes
the following operations:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
 
# Variables Description

Each variable name is compound of the following substrings:

- the prefix 't' is used to denote time (e.g. tBodyAccMeanX);
- the prefix 'f' is used to denote time (e.g. fBodyAccMeanX);

- the substring 'BodyAcc' to denote acceleration signals (e.g. tBodyAccMeanX);
- the substring 'GravityAcc' to denote gravity acceleration signals (e.g. tGravityAccMeanX);
- the sufix 'X', 'Y' and 'Z' is used to denote 3-axial signals in the X, Y and Z directions;
- the substring 'Jerk' to denote Jerk signals (e.g. tBodyAccJerkX and tBodyGyroJerkX);
- the substring 'Gyro' to denote gyroscope (e.g. tBodyGyroMeanX);  
- the substring 'Mag' to denote Magnitude (e.g. tBodyAccMagMean); 

- the substring 'mean' to denote the Mmean value;
- the substring 'std' is used to denote the Standard deviation;
- the substring 'meanFreq' is used to denote the Weighted average of the frequency components to obtain a mean frequency.


**Variable names and description:**

The tidy dataset has the following variables.
(note: I'm not an english native speaker, therefore some of the following descriptions may "sound strange".)

- subject.id - The id (code) that identifies the subject who performed the activity. Goes from 1 to 30. 
- activity.label - The activity name. One of: (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
- activity.label.id - The activity id (code). Goes from 1 to 6. 
- tBodyAccmeanX - Mean of the time body accelaration signal in the x direction
- tBodyAccmeanY - Mean of the time body accelaration signal in the y direction
- tBodyAccmeanZ - Mean of the time body accelaration signal in the z direction
- tBodyAccstdX - Standard deviation of the time body accelaration signal in the x direction
- tBodyAccstdY - Standard deviation of the time body accelaration signal in the y direction
- tBodyAccstdZ - Standard deviation of the time body accelaration signal in the z direction
- tGravityAccmeanX - Mean of the time gravity acceleration signal in the x direction
- tGravityAccmeanY - Mean of the time gravity acceleration signal in the y direction
- tGravityAccmeanZ - Mean of the time gravity acceleration signal in the z direction
- tGravityAccstdX - Standard deviation of the time gravity acceleration signal in the x direction
- tGravityAccstdY - Standard deviation of the time gravity acceleration signal in the y direction
- tGravityAccstdZ - Standard deviation of the time gravity acceleration signal in the z direction
- tBodyAccJerkmeanX - Jerk signal mean of the time body accelaration in the x direction
- tBodyAccJerkmeanY - Jerk signal mean of the time body accelaration in the y direction
- tBodyAccJerkmeanZ - Jerk signal mean of the time body accelaration in the z direction
- tBodyAccJerkstdX - Jerk signal standard deviation of the time body accelaration in the x direction
- tBodyAccJerkstdY - Jerk signal standard deviation of the time body accelaration in the y direction
- tBodyAccJerkstdZ - Jerk signal standard deviation of the time body accelaration in the z direction
- tBodyGyromeanX - Mean of the time body given by the gyroscope in the x direction
- tBodyGyromeanY - Mean of the time body given by the gyroscope in the y direction
- tBodyGyromeanZ - Mean of the time body given by the gyroscope in the z direction
- tBodyGyrostdX - Standard deviation of the time body given by the gyroscope in the x direction
- tBodyGyrostdY - Standard deviation of the time body given by the gyroscope in the y direction
- tBodyGyrostdZ - Standard deviation of the time body given by the gyroscope in the z direction
- tBodyGyroJerkmeanX - Jerk signal mean of the time body given by the gyroscope in the x direction
- tBodyGyroJerkmeanY - Jerk signal mean of the time body given by the gyroscope in the y direction
- tBodyGyroJerkmeanZ - Jerk signal mean of the time body given by the gyroscope in the z direction
- tBodyGyroJerkstdX - Jerk signal standard deviation of the time body given by the gyroscope in the x direction
- tBodyGyroJerkstdY - Jerk signal standard deviation of the time body given by the gyroscope in the y direction
- tBodyGyroJerkstdZ - Jerk signal standard deviation of the time body given by the gyroscope in the z direction
- tBodyAccMagmean - Mean of the median absolute deviation time body accelaration signal 
- tBodyAccMagstd - Stand deviation of the median absolute deviation of the time body accelaration signal 
- tGravityAccMagmean - Mean of the median absolute deviation time gravity acceleration signal 
- tGravityAccMagstd - Stand deviation of the median absolute deviation of the time gravity acceleration signal 
- tBodyAccJerkMagmean - Mean of the median absolute deviation time body accelaration signal 
- tBodyAccJerkMagstd - Stand deviation of the median absolute deviation of the time body accelaration signal 
- tBodyGyroMagmean - Mean of the median absolute deviation time body given by the gyroscope 
- tBodyGyroMagstd - Stand deviation of the median absolute deviation of the time body given by the gyroscope 
- tBodyGyroJerkMagmean - Mean of the median absolute deviation time body given by the gyroscope 
- tBodyGyroJerkMagstd - Stand deviation of the median absolute deviation of the time body given by the gyroscope 
- fBodyAccmeanX - Mean of the frequency body accelaration signal in the x direction
- fBodyAccmeanY - Mean of the frequency body accelaration signal in the y direction
- fBodyAccmeanZ - Mean of the frequency body accelaration signal in the z direction
- fBodyAccstdX - Standard deviation of the frequency body accelaration signal in the x direction
- fBodyAccstdY - Standard deviation of the frequency body accelaration signal in the y direction
- fBodyAccstdZ - Standard deviation of the frequency body accelaration signal in the z direction
- fBodyAccmeanFreqX - Weighted average of the frequency components to obtain a mean frequency of the frequency body accelaration signal in the x direction
- fBodyAccmeanFreqY - Weighted average of the frequency components to obtain a mean frequency of the frequency body accelaration signal in the y direction
- fBodyAccmeanFreqZ - Weighted average of the frequency components to obtain a mean frequency of the frequency body accelaration signal in the z direction
- fBodyAccJerkmeanX - Jerk signal mean of the frequency body accelaration signal in the x direction
- fBodyAccJerkmeanY - Jerk signal mean of the frequency body accelaration signal in the y direction
- fBodyAccJerkmeanZ - Jerk signal mean of the frequency body accelaration signal in the z direction
- fBodyAccJerkstdX - Jerk signal standard deviation of the frequency body accelaration signal in the x direction
- fBodyAccJerkstdY - Jerk signal standard deviation of the frequency body accelaration signal in the y direction
- fBodyAccJerkstdZ - Jerk signal standard deviation of the frequency body accelaration signal in the z direction
- fBodyAccJerkmeanFreqX - Weighted average of the Jerk signal of the frequency body accelaration signal in the x direction
- fBodyAccJerkmeanFreqY - Weighted average of the Jerk signal of the frequency body accelaration signal in the y direction
- fBodyAccJerkmeanFreqZ - Weighted average of the Jerk signal of the frequency body accelaration signal in the z direction
- fBodyGyromeanX - Mean of the frequency body given by the gyroscope in the x direction
- fBodyGyromeanY - Mean of the frequency body given by the gyroscope in the y direction
- fBodyGyromeanZ - Mean of the frequency body given by the gyroscope in the z direction
- fBodyGyrostdX - Standard deviation of the frequency body given by the gyroscope in the x direction
- fBodyGyrostdY - Standard deviation of the frequency body given by the gyroscope in the y direction
- fBodyGyrostdZ - Standard deviation of the frequency body given by the gyroscope in the z direction
- fBodyGyromeanFreqX - Weighted average of the frequency body given by the gyroscope in the x direction
- fBodyGyromeanFreqY - Weighted average of the frequency body given by the gyroscope in the y direction
- fBodyGyromeanFreqZ - Weighted average of the frequency body given by the gyroscope in the z direction
- fBodyAccMagmean - Magnitude mean of the frequency body accelaration signal 
- fBodyAccMagstd - Magnitude standard deviation of the frequency body accelaration signal 
- fBodyAccMagmeanFreq - Weighted average of magnitude of the frequency body accelaration signal 
- fBodyBodyAccJerkMagmean - Jerk magnitude mean of the frequency body accelaration signal 
- fBodyBodyAccJerkMagstd - Jerk magnitude stand deviation of the frequency body accelaration signal 
- fBodyBodyAccJerkMagmeanFreq - Jerk magnitude weighted average of the frequency body accelaration signal 
- fBodyBodyGyroMagmean - Magnitude mean of the frequency body given by the gyroscope 
- fBodyBodyGyroMagstd - Magnitude standard deviation of the frequency body given by the gyroscope 
- fBodyBodyGyroMagmeanFreq - Weighted average of magnitude of the frequency body given by the gyroscope 
- fBodyBodyGyroJerkMagmean - Jerk magnitude mean of the frequency body given by the gyroscope 
- fBodyBodyGyroJerkMagstd - Jerk magnitude stand deviation of the frequency body given by the gyroscope 
- fBodyBodyGyroJerkMagmeanFreq - Jerk magnitude weighted average of the frequency body given by the gyroscope 
