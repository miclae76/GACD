Tidy Data Set CodeBook
=====================
About
-----
This tidy data set is based on the orignal raw data set which can be downloaded here:
http://archive.ics.uci.edu/ml/machine-learning-databases/00240/

This data set extracted only the data related to mean or standard deviation measurements anc compute the mean of those measurements by activity and subject. 

Dimension fields
----------------
- subject = unique identifier of the participant, type = integer, value range = 1:30

- activity = activity perform during measurement, type factor, character, 6 distinct values
            Values



Measurement fields
------------------
All measurements  fields are numeric values, 15 decimals, are normalized and bounded within [-1,1].

<b>Body and gravity linear acceleration</b> (t prefix is for time)
- tBodyAcc-XYZ 
- tGravityAcc-XYZ

<b>Angular velocity
- tBodyGyro-XYZ

<b>Jerk Signal</b> (is linear signals derived in time)
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

