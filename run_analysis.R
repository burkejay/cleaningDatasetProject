library(dplyr)

# part of step 4: read in descriptive column names
head2 <- read.table("features.txt",stringsAsFactors=FALSE)
# part of step 4: use transpose to change from rownames to colnames
rehead2 <- t(head2$V2)
# part of step 4: make colnames more descriptive by fixing bad colnames
rehead2 <- sub("BodyBody", "Body", rehead2)

# part of step 4: add descriptive names for new cols
all_names <- c(rehead2, "activity", "id_of_human_volunteer")

# step 1: next 8 lines get the 2 datasets and union together
body1 <- read.table("train/X_train.txt")
body11 <- read.table("train/y_train.txt")
body12 <- read.table("train/subject_train.txt")
train_body <- cbind(body1,body11,body12)

body2 <- read.table("test/X_test.txt")
body21 <- read.table("test/y_test.txt")
body22 <- read.table("test/subject_test.txt")
test_body <- cbind(body2,body21,body22)

#Finishing touch of Step #1: merge the training and
#test sets into 1 data set.
comb <- rbind(train_body,test_body)

#Finishing touch of Step #4: appropriately labels
#the data with descriptive variable names
colnames(comb) <- all_names

#Step 2: Extracts only the measurement of the mean
#and std for each measurement
cols <-  grep("mean\\(\\)|std",head2$V2)
cols2 <- c(cols,562,563)
means_and_stdev <- comb[,cols2]

#Step 3: the next 3 lines add a column to the dataset
#that uses descriptive activity names 
activities <- read.table("activity_labels.txt", stringsAsFactors=FALSE)
colnames(activities) <- c("activity_id", "activity_human_volunteer_executes")
means_and_stdev_activities <- merge(means_and_stdev,activities,by.x = "activity", by.y = "activity_id")

#step 5: find the average of each variable found in step 2
#by activity and subject
summary <- means_and_stdev_activities %>% group_by(activity_human_volunteer_executes,id_of_human_volunteer) %>% summarise_each(funs(mean))

write.table(summary,file="Means.txt",row.names=FALSE)
