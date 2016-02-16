# Getting-and-Cleaning-Data-Course-Project
Coursera getting and cleaning data project files
This Repo is created for the Coursera Getting and Cleaning Data Course Project.

Data used for analysis in this project can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


Files used

Activity_labels.txt: contains an index and a descriptive activity levels.
Features.txt: contains descriptive activity names.
Subject files: contains the subject assigned with each activity.
trainy/testy: contains the data about activity collected by Samsung.

This repo contains the following files:

--run_analysis.R : contains the script used for the analysis.--

CodeBook.md : contains data to indicate all the variables and summaries calculated, along with units, and any other relevant information

## Summary

The run_analysis.R file does the following

1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement.
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names.
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
