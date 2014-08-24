Tidy Data Set CodeBook
=====================
About
-----
This tidy data set is based on the orignal raw data set which can be downloaded here:
http://archive.ics.uci.edu/ml/machine-learning-databases/00240/

This data set extracted only the data related to mean or standard deviation measurements anc compute the mean of those measurements by activity and subject. 

This data set contains 180 records of 68 variables.

Dimension fields (Col 1:2)
--------------------------
Dimension fiels are variables against which the mean of the features values was summarized.
- subject : unique identifier of the participant, type = integer, value range = 1:30

- activity : activity perform during measurement, type factor w/6 levels (WALKING, WALKING_UPSTAIRS,  WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)


Measurement fields (Col 3:68)
-----------------------------
All triaxial accelerator and gyroscope measurements.
Fields are numeric values, 15 decimals, normalized and bounded within [-1,1].

<b>Body and gravity linear acceleration</b> (t prefix is for time)
- tBodyAcc-XYZ 
- tGravityAcc-XYZ

<b>Angular velocity
- tBodyGyro-XYZ

<b>Jerk Signals</b> (is linear signals derived in time)
- tBodyAccJerk-XYZ
- tBodyGyroJerk-XYZ

<b>Signals magnitude</b>  (calculated using the Euclidean norm)
- tBodyAccMag
- tGravityAccMag
- tBodyGyroMag
- tBodyAccJerkMag
- tBodyGyroJerkMag

<b>Frequency domain signals</b>  (produced by Fast Fourier Transformation)
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

