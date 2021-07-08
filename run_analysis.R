#Starts dplyr package
library(dplyr)

## Reads in the different train/test datasets
x_train <- read.table("X_train.txt")
x_test <- read.table("X_test.txt")
y_train <- read.table("y_train.txt")
y_test <- read.table("y_test.txt")
subject_train <- read.table("subject_train.txt")
subject_test <- read.table("subject_test.txt")

##Combines the train/text dataset for each set of files
x_all <- rbind(x_train, x_test)
y_all <- rbind(y_train, y_test)
subject_all <- rbind(subject_train, subject_test)

##reads in features to be used for column names
features <- read.table("features.txt")

##reads in activity names to merge in with data
activity <- read.table("activity_labels.txt")

##Names columns of datasets
colnames(subject_all) <- "Subject_ID"
colnames(y_all) <- "Activity_ID"
colnames(x_all) <- features[,2]
colnames(activity) <- c("Activity_ID", "Activity_Name")

##merge activity name with number
y_all <- merge(y_all, activity, by = "Activity_ID")

##Combine all datasets into single dataset
combine_df <- cbind(subject_all, y_all, x_all )

##Select only mean and standard deviation values for each variable
select_mean_std <- select(combine_df, Subject_ID, Activity_ID, Activity_Name, contains("std"), contains("mean"))

##Group by subject/Activity to calculate mean for each variable for each Subject/Activity group.
avg_select_mean_std <- select_mean_std %>%
  group_by(Subject_ID, Activity_ID, Activity_Name) %>%
  summarize_all(mean)

##Write to table for final submission
write.table(avg_select_mean_std, "final_df.txt", row.name = FALSE)
