# Getting and Cleaning Data Course Project


# Assignment Description 
#-----------------------
#1.Merges the training and the test sets to create one data set.
#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
#3.Uses descriptive activity names to name the activities in the data set (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
#4.Appropriately labels the data set with descriptive variable names. 
#5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


#setwd("D:/Coursera/Repository/GACD")
dPath = "./UCI_HAR_Dataset"

# Required packages
library(reshape2)
library(plyr)

# Create Read and Merge generic function that read and combine train and test datasets
readMerge <- function(set, path) {
        train.df <- read.table(paste(path,"/train/", set, "_train.txt", sep=""))
        test.df <- read.table(paste(path,"/test/", set, "_test.txt", sep=""))
        df <- rbind(train.df, test.df) 
}

#Process Subject data
subject.df <- readMerge("subject", dPath)
colnames(subject.df)<-"subject"


#Process Activity data
activity.df <- readMerge("y", dPath)
colnames(activity.df) <- "activity_ID"
activity_labels<-read.table(paste0(dPath, "./activity_labels.txt"),
                            sep=" ",
                            col.names=c("activity_ID","activity"))
activity.df <- join(activity.df, activity_labels, by="activity_ID", type="left")
#don't need ID anymore
activity.df$activity_ID <- NULL


#Process variables
variables.df <- readMerge("X", dPath)

#Reduced variables to those related to mean or std
features <- read.table(paste0(dPath, "./features.txt"), col.names=c("ID", "label"))
colnames(variables.df) <- features$label
pattern<-"mean\\(\\)|std\\(\\)"
variables.df = variables.df[,grep(pattern , names(variables.df), value=TRUE)]


#Final Merge, Activity and subject placed as two firs columns
merge.df <- cbind(activity.df, subject.df, variables.df)

#Melt and reshape to return average of each variable for each activity and each subject.
ncol <- ncol(merge.df)
tidy.df <- melt(merge.df, id=c("activity", "subject"), measure.vars=colnames(merge.df[3:ncol]))

#Reshape into tidy data frame by mean using the reshape2 package
tidy.df <- dcast(tidy.df, activity + subject ~ variable, mean)

#Reorder by Subject then Activity
tidy.df <- tidy.df[order(tidy.df$activity, tidy.df$subject),]


#Store tidy data set
write.table(tidy.df, file="tidy_data.txt", row.name=FALSE, sep = "\t", append=FALSE)

#That's all folks !








