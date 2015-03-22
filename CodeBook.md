---
title: "CodeBook.md"
author: "Jay Burke"
date: "March 21, 2015"
output: html_document
---

## Data Dictionary of Burke's Averages and STD's of UCI's Human Activity Recognition Dataset

This dataset consists of 180 rows x 69 columns: 
 - 180 rows: the average values of the means and average values of the standard deviations of the measurements taken from the phones of 30 volunteers performing 6 actions (30 x 6).
 - 69 columns: 3 dimensions + 66 measurements.  The assignment specified that we were to collect only the means and standard deviations, which are measurements specifically called out by variable names ending in mean() and std(),  Other columns in the UCI dataset that had the string "mean" and "std" are not measurement means and std's.
 
dimension 1: "activity_human_volunteer_executes" : what the human volunteer was doing when the phone registered this row's readings.  Values are strings as categorical values and can be:
- "WALKING"
- "WALKING_UPSTAIRS"
- "WALKING_DOWNSTAIRS"
- "SITTING"
- "STANDING"
- "LAYING"

dimension 2: "id_of_human_volunteer" : each human volunteer was given an id number.  Values are integers and range from 1 to 30 (30 volunteers) and are unitless IDs.

dimension 3: "activity": an integer representation of each of the 6 activities.  Values are integers as categorical values. 1 will always be "WALKING", 2="WALKING_UPSTAIRS", "3=WALKING_DOWNSTAIRS", 4="SITTING", 5="STANDING" and 6 = "LAYING" in dimension 1.

measurement 1-3: "tBodyAcc-mean()-X", "tBodyAcc-mean()-Y", "tBodyAcc-mean()-Z" : Each cell is the average reading of the averages of the phone's accelerometer's 3 axial signals (X, Y, Z) in the time-domain, filtered to derive the body acceleration when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit.

measurement 4-6: "tBodyAcc-std()-X", "tBodyAcc-std()-Y", "tBodyAcc-std()-Z" : Each cell is the average reading of the standard deviations of the phone's accelerometer's 3 axial signals (X, Y, Z) in the time-domain, filtered to derive the body acceleration when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit.

measurement 7-9: "tGravityAcc-mean()-X", "tGravityAcc-mean()-Y", "tGravityAcc-mean()-Z" : Each cell is the average reading of the averages of the phone's accelerometer's 3 axial signals (X, Y, Z) in the time-domain, filtered to derive the gravity acceleration when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit.

measurement 10-12: "tGravityAcc-std()-X", "tGravityAcc-std()-Y", "tGravityAcc-std()-Z" : Each cell is the average reading of the standard deviations of the phone's accelerometer's 3 axial signals (X, Y, Z) in the time-domain, filtered to derive the gravity acceleration when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit.

measurement 13-15: "tBodyAccJerk-mean()-X", "tBodyAccJerk-mean()-Y", "tBodyAccJerk-mean()-Z": Each cell is the average reading of the averages of the phone's accelerometer's 3 axial signals (X, Y, Z) in the time-domain, filtered to derive the body acceleration and filtered in time to derive Jerk signals when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit. 

measurement 16-18: "tBodyAccJerk-std()-X", "tBodyAccJerk-std()-Y", "tBodyAccJerk-std()-Z" : Each cell is the average reading of the standard deviations of the phone's accelerometer's 3 axial signals (X, Y, Z) in the time-domain, filtered to derive the body acceleration and filtered in time to derive Jerk signals when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit. 

measurement 19-21: "tBodyGyro-mean()-X", "tBodyGyro-mean()-Y", "tBodyGyro-mean()-Z" : Each cell is the average reading of the averages of the phone's gyroscope's 3 axial signals (X, Y, Z) in the time-domain, filtered to derive the body acceleration when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit.

measurement 22-24: "tBodyGyro-std()-X", "tBodyGyro-std()-Y", "tBodyGyro-std()-Z" : Each cell is the average reading of the standard deviations of the phone's gyroscope's 3 axial signals (X, Y, Z) in the time-domain, filtered to derive the body acceleration when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit.

measurement 25-27: "tBodyGyroJerk-mean()-X", "tBodyGyroJerk-mean()-Y",  "tBodyGyroJerk-mean()-Z" : Each cell is the average reading of the averages of the phone's gyroscope's 3 axial signals (X, Y, Z) in the time-domain, filtered to derive the body acceleration and filtered in time to derive Jerk signals when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit. 

measurement 28-30: "tBodyGyroJerk-std()-X", "tBodyGyroJerk-std()-Y", "tBodyGyroJerk-std()-Z" : Each cell is the average reading of the standard deviations of the phone's gyroscope's 3 axial signals (X, Y, Z) in the time-domain, filtered to derive the body acceleration and filtered in time to derive Jerk signals when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit. 

measurement 31: "tBodyAccMag-mean()" : Each cell is the average reading of the averages of the phone's accelerometer's 3 axial signals (X, Y, Z) filtered to derive the body acceleration and then combined into a magnitude measurement in the time-domain when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit. 

measurement 32:"tBodyAccMag-std()" : Each cell is the average reading of the standard deviations of the phone's accelerometer's 3 axial signals (X, Y, Z) filtered to derive the body acceleration and then combined into a magnitude measurement in the time-domain when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit. 

measurement 33:"tGravityAccMag-mean()" : Each cell is the average reading of the averages of the phone's accelerometer's 3 axial signals (X, Y, Z) filtered to derive the gravity acceleration and then combined into a magnitude measurement in the time-domain when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit. 

measurement 34:"tGravityAccMag-std()" : Each cell is the average reading of the standard deviations of the phone's accelerometer's 3 axial signals (X, Y, Z) filtered to derive the gravity acceleration and then combined into a magnitude measurement in the time-domain when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit. 

measurement 35:"tBodyAccJerkMag-mean()" : Each cell is the average reading of the averages of the phone's accelerometer's 3 axial signals (X, Y, Z) in the time-domain, filtered to derive the body acceleration and filtered in time to derive Jerk signals then combined into a magnitude measurement when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit. 

measurement 36:"tBodyAccJerkMag-std()" : Each cell is the average reading of the standard deviations of the phone's accelerometer's 3 axial signals (X, Y, Z) in the time-domain, filtered to derive the body acceleration and filtered in time to derive Jerk signals then combined into a magnitude measurement when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit.

measurement 37:"tBodyGyroMag-mean()" : Each cell is the average reading of the averages of the phone's gyroscope's 3 axial signals (X, Y, Z) in the time-domain, filtered to derive the body acceleration and the combined into a magnitude measurement when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit.

measurement 38:"tBodyGyroMag-std()" : Each cell is the average reading of the standard deviations of the phone's gyroscope's 3 axial signals (X, Y, Z) in the time-domain, filtered to derive the body acceleration and the combined into a magnitude measurement when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit.

measurement 39:"tBodyGyroJerkMag-mean()" : Each cell is the average reading of the averages of the phone's gyroscope's 3 axial signals (X, Y, Z) in the time-domain, filtered to derive the body acceleration and filtered in time to derive Jerk signals and combined into a single magnitude measurement when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit. 

measurement 40:"tBodyGyroJerkMag-std()" : Each cell is the average reading of the standard deviations of the phone's gyroscope's 3 axial signals (X, Y, Z) in the time-domain, filtered to derive the body acceleration and filtered in time to derive Jerk signals and combined into a single magnitude measurement when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit.

measurement 41-43: "fBodyAcc-mean()-X", "fBodyAcc-mean()-Y",  "fBodyAcc-mean()-Z" : Each cell is the average reading of the averages of the phone's accelerometer's 3 axial signals (X, Y, Z) filtered to derive the body acceleration and then transformed to the frquency domain when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit.

measurement 44-46: "fBodyAcc-std()-X", "fBodyAcc-std()-Y", "fBodyAcc-std()-Z" : Each cell is the average reading of the standard deviations of the phone's accelerometer's 3 axial signals (X, Y, Z) filtered to derive the body acceleration and then transformed to the frquency domain when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit.

measurement 47-49: "fBodyAccJerk-mean()-X", "fBodyAccJerk-mean()-Y",  "fBodyAccJerk-mean()-Z" : Each cell is the average reading of the averages of the phone's accelerometer's 3 axial signals (X, Y, Z) filtered to derive the body acceleration and filtered in time to derive Jerk signals and then transformed into a frequency measurement when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit.

measurement 50-52: "fBodyAccJerk-std()-X", "fBodyAccJerk-std()-Y",  "fBodyAccJerk-std()-Z" : Each cell is the average reading of the standard deviations of the phone's accelerometer's 3 axial signals (X, Y, Z) filtered to derive the body acceleration and filtered in time to derive Jerk signals and then transformed into a frequency measurement when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit.

measurement 53-55: "fBodyGyro-mean()-X", "fBodyGyro-mean()-Y",  "fBodyGyro-mean()-Z": Each cell is the average reading of the averages of the phone's gyroscope's 3 axial signals (X, Y, Z) filtered to derive the body acceleration and then transformed to a frequency measurement when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit. 

measurement 56-58: "fBodyGyro-std()-X", "fBodyGyro-std()-Y", "fBodyGyro-std()-Z": Each cell is the average reading of the standard deviations of the phone's gyroscope's 3 axial signals (X, Y, Z) filtered to derive the body acceleration and then transformed to a frequency measurement when 1 person is doing 1 activity. Values are real numbers between -1 and 1 with a time unit. 

measurement 59: "fBodyAccMag-mean()" 

measurement 60: "fBodyAccMag-std()" 

measurement 61: "fBodyBodyAccJerkMag-mean()" 

measurement 62: "fBodyBodyAccJerkMag-std()" 

measurement 63: "fBodyBodyGyroMag-mean()" 

measurement 64: "fBodyBodyGyroMag-std()" 

measurement 65: "fBodyBodyGyroJerkMag-mean()" 

measurement 66: "fBodyBodyGyroJerkMag-std()"