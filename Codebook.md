Tidy Data Set CodeBook
=====================
About
-----
This tidy data set is based on the orignal raw data set which can be downloaded here:
http://archive.ics.uci.edu/ml/machine-learning-databases/00240/

This data set extracted only the data related to mean or standard deviation measurements and compute the mean of those measurements by activity and subject. 

This tidy data set contains 180 records of 68 variables.

Dimension fields (Col 1:2)
--------------------------
Dimension fields are variables against which the mean of the features values was summarized.
- activity : activity perform during measurement, type factor w/6 levels (WALKING, WALKING_UPSTAIRS,  WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
- subject : unique identifier of the participant, type = integer, value range from 1 to 30

Measurement fields (Col 3:68)
-----------------------------
All triaxial accelerator and gyroscope measurements (X,Y,Z). 
Accelaration(Acc) is given in standard gravity units 'g', Gyroscope angular velocity(Gyro) units is radian/second.
Each Fields is numeric value, 15 decimals, normalized and bounded within [-1,1] and then represented the mean of the time or frequency domain variables. (t denote for time, f for frequency)

<b>Body and gravity linear acceleration</b> (using low pass Butterworth filter)
- tBodyAcc-mean()-XYZ 
- tBodyAcc-std()-XYZ 
- tGravityAcc-mean()-XYZ
- tGravityAcc-std()-XYZ

<b>Angular velocity</b>
- tBodyGyro-mean()-XYZ
- tBodyGyro-std()-XYZ

<b>Jerk Signals</b> (is linear signals derived in time)
- tBodyAccJerk-mean()-XYZ
- tBodyAccJerk-std()-XYZ
- tBodyGyroJerk-mean()-XYZ
- tBodyGyroJerk-std()-XYZ


<b>Signals magnitude</b>  (calculated using the Euclidean norm)
- tBodyAccMag-mean()
- tBodyAccMag-std()
- tGravityAccMag-mean()
- tGravityAccMag-std()
- tBodyGyroMag-mean()
- tBodyGyroMag-std()
- tBodyAccJerkMag-mean()
- tBodyAccJerkMag-std()
- tBodyGyroJerkMag-mean()
- tBodyGyroJerkMag-std()

<b>Frequency domain signals</b>  (produced by Fast Fourier Transformation)
- fBodyAcc-mean()-XYZ
- fBodyAccJerk-mean()-XYZ
- fBodyGyro-mean()-XYZ
- fBodyAcc-std()-XYZ
- fBodyAccJerk-std()-XYZ
- fBodyGyro-std()-XYZ
- fBodyAccMag-mean()
- fBodyAccMag-std()
- fBodyBodyAccJerkMag-mean()
- fBodyBodyAccJerkMag-std()
- fBodyBodyGyroMag-mean()
- fBodyBodyGyroMag-std()
- fBodyBodyGyroJerkMag-mean()
- fBodyBodyGyroJerkMag-std()

