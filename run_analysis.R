#
# You should create one R script called run_analysis.R that does the following. 
# 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive activity names. 
# 5. Creates a second, independent tidy data set with the average of each 
# variable for each activity and each subject. 
#


#
# GOAL: 1. Merges the training and the test sets to create one data set.
#

# Load the features names (the independent variables only). There are 561 features. 
features.names.df <- read.table("UCI HAR Dataset/features.txt", header=FALSE, sep=" ", stringsAsFactors=FALSE)
# After loading the file we end up with a data.frame with two columns.
# > head(features.names.df,3) 
#    V1                V2
# 1  1 tBodyAcc-mean()-X
# 2  2 tBodyAcc-mean()-Y
# 3  3 tBodyAcc-mean()-Z
# > nrow(features.names.df)
# [1] 561

# Load the test and training datasets.
# Note: using sep = " " does not work. I don't understand why.
x.test.df <- read.table("UCI HAR Dataset/test/X_test.txt", header=FALSE, sep="")
x.train.df <- read.table("UCI HAR Dataset/train/X_train.txt", header=FALSE, sep="")
# > ncol(x.test.df); nrow(x.test.df)
# [1] 561
# [1] 2947
#
# > ncol(x.train.df); nrow(x.train.df)
# [1] 561
# [1] 7352

# Rename the columns names. 
colnames(x.test.df) <- features.names.df[,2]
colnames(x.train.df) <- features.names.df[,2]

# Load the "subject" for the test and training dataset.
# Each of these files have just one column.
x.test.subject.df <- read.table("UCI HAR Dataset/test/subject_test.txt", header=FALSE, sep="")
x.train.subject.df <- read.table("UCI HAR Dataset/train/subject_train.txt", header=FALSE, sep="")
# Rename the column name
colnames(x.test.subject.df)  <- "subject.id"
colnames(x.train.subject.df) <- "subject.id"
# Add the subject column to the test and training datasets
x.test.df <- cbind(x.test.df, x.test.subject.df)
x.train.df <- cbind(x.train.df, x.train.subject.df)
# > ncol(x.test.df); nrow(x.test.df)
# [1] 562
# [1] 2947

# Load the labels for the test and training dataset.
y.test.df <- read.table("UCI HAR Dataset/test/y_test.txt", header=FALSE, sep="")
y.train.df <- read.table("UCI HAR Dataset/train/y_train.txt", header=FALSE, sep="")
# > head(y.test.df,3)
#   V1
# 1  5
# 2  5
# 3  5
# > ncol(y.test.df); nrow(y.test.df)
# [1] 1
# [1] 2947
#
# > ncol(y.train.df); nrow(y.train.df)
# [1] 1
# [1] 7352
activity.label.id.colname <- "activity.label.id"
colnames(y.test.df)  <- activity.label.id.colname
colnames(y.train.df) <- activity.label.id.colname

# Merge the  thwo data frames.
# NOTE: We will not use the use merge() function because merge() is for combining 
# data when you have a common identifier. In this case we do not have a common id 
# between the two files.
#
xy.test.df <- cbind(x.test.df, y.test.df)
xy.train.df <- cbind(x.train.df, y.train.df)
# > ncol(xy.test.df);nrow(xy.test.df)
# [1] 562
# [1] 2947
# > ncol(xy.train.df);nrow(xy.train.df)
# [1] 562
# [1] 7352

# Join the train and test datasets.
xy.fulldataset.df <- rbind(xy.test.df, xy.train.df)
# > ncol(xy.fulldataset.df);nrow(xy.fulldataset.df)
# [1] 562
# [1] 10299


#
# GOAL: 2. Extracts only the measurements on the mean and standard deviation
# for each measurement.
# 

# Regular Expression to select the desired features
feature.name.regexp <- "(mean|std)[(]?[)]?"

# Vector of logicals indicating if the feature is a measure on the mean or
# standard deviation
measurements.we.want <- grepl(feature.name.regexp, features.names.df[,2])

xy.fulldataset.selected.measurements.df <- xy.fulldataset.df[, measurements.we.want]
# > ncol(xy.fulldataset.selected.measurements.df);nrow(xy.fulldataset.selected.measurements.df)
# [1] 67
# [1] 10299

#
# GOAL: 3. Uses descriptive activity names to name the activities in the 
# data set.
# 

activity.labels.df <- read.table("UCI HAR Dataset/activity_labels.txt", header=FALSE, sep=" ", stringsAsFactors=FALSE)
# > head(activity.labels.df, 3)
#   V1                 V2
# 1  1            WALKING
# 2  2   WALKING_UPSTAIRS
# 3  3 WALKING_DOWNSTAIRS

# rename the V1 and V2 column names
colnames(activity.labels.df) <- c("activity.label.id", "activity.label")
# merge the two datasets
xy.fulldataset.df <- merge(xy.fulldataset.selected.measurements.df, activity.labels.df, by.x=activity.label.id.colname, by.y="activity.label.id")
# > ncol(xy.fulldataset.df);nrow(xy.fulldataset.df)
#

#
# GOAL: 4. Appropriately labels the data set with descriptive activity 
# names. 
#

#names(xy.fulldataset.df)
new.names <- gsub("[)(-]", "", names(xy.fulldataset.df))
names(xy.fulldataset.df) <- new.names

# Count all columns but "subject.id" and "activity.label"
col.indexes <- length(xy.fulldataset.df) - 2

#
# GOAL: 5. Creates a second, independent tidy data set with the 
# average of each variable for each activity and each subject. 
#

# Compute the mean for all selected columns.
# NOTE: this includes the first column, the "activity.id".
xy.tidydataset.df <- aggregate(xy.fulldataset.df[, 1:col.indexes]
          , list(subject.id = xy.fulldataset.df$subject.id,
                 activity.label = xy.fulldataset.df$activity.label)
          , mean)

write.csv(file="tidy_dataset.csv", x=xy.tidydataset.df, row.names=FALSE)
