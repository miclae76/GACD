Getting and Cleaning Data - Course Project
==========================================
Human Activity Recognition Using Smartphones

Data Set General Information
-----------------------------
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. Additional info available here :

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data Set Files Description
--------------------------
The data set contains 10299 instances partitioned into train and test data. It is organized into several files:

1. <b>activity_labels.txt</b> : mapping table for activities (ID, Label)
2. <b>features.txt</b> :  variables names 
3. <b>subject_test.txt</b> and <b>subject_train.txt</b> : identifier of the subject who carried out the experiment.
4. <b>X_test.txt</b> and <b>X_train.txt</b> : 561 variables storing measurement of triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration and triaxial Angular velocity from the gyroscope. Axis can be identified a last character of the variable name
5. <b>y_test.txt</b> and <b>y_train.txt</b> : identifier of the activity performed.


Data Manipulations
--------------------------------------
<i>Pre-requisites: 
the UCI HAR Dataset must be extracted in a repo directory called "UCI HAR Dataset"<i>
The run_analysis.R sript do:
- read in and combines test and training data for subjects, features and activities
- keep data for only the varibels related to  measurement of mean or standard deviation
- merge subject, features and activity data
- reshape data to present the means of all the columns per test subject and per activity and export the new tidy data set into a text file <b>tidy_data.txt</b> also available in the repo.


