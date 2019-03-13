# set working directory
setwd("/Users/sukarora/Desktop/coursera")

# download the file from the link and unzip it in the working directory
if(!dir.exists("UCI HAR Dataset")){
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "dataset.zip", method="curl")
  unzip("dataset.zip")
}

# read activity_labels data set
activity<- read.table("UCI HAR Dataset/activity_labels.txt")
colnames(activity)<- c("activityID", "activityName")

# read featured data set
features<- read.table("UCI HAR Dataset/features.txt", as.is = TRUE)[2]

# read test data sets
y_test<- read.table("UCI HAR Dataset/test/y_test.txt")
x_test<- read.table("UCI HAR Dataset/test/x_test.txt")
subject_test<- read.table("UCI HAR Dataset/test/subject_test.txt")

# read train data sets
y_train<- read.table("UCI HAR Dataset/train/y_train.txt")
x_train<- read.table("UCI HAR Dataset/train/x_train.txt")
subject_train<- read.table("UCI HAR Dataset/train/subject_train.txt")

# Merges the training and the test sets to create one data set.
test<- cbind(subject_test, y_test, x_test)
train<- cbind(subject_train, y_train, x_train)
test_and_train<- rbind(test,train)

#naming the columns of the test_and_train dataset
colnames(test_and_train)<- c("Subject", "Activity", features[,1])

# Select only columns with mean and std
columns_to_keep<- grep(".*mean.*|.*std.*|Subject|Activity", colnames(test_and_train))

# Data set with required columns
allData<- test_and_train[,columns_to_keep]

# Uses descriptive activity names to name the activities in the data set
allData$Activity<- factor(allData$Activity, levels = activity$activityID, labels = activity$activityName)

# Appropriately labels the data set with descriptive variable names.
columns_allData<- colnames(allData)
columns_allData<- gsub("-std", " StandardDeviation", columns_allData)
columns_allData<- gsub("-mean", " Mean", columns_allData)
columns_allData<- gsub("()", " ", columns_allData, fixed = TRUE)
columns_allData<- gsub("^f", "Frequency Domain ", columns_allData)
columns_allData<- gsub("^t", "Time Domain ", columns_allData)
columns_allData<- gsub("Acc", " Accelerometer ", columns_allData)
columns_allData<- gsub("Gyro", " Gyroscope ", columns_allData)
columns_allData<- gsub("Mag", " Magnitude", columns_allData)
columns_allData<- gsub("Freq", " Frequency", columns_allData)
columns_allData<- gsub("BodyBody", "Body", columns_allData)

# Assigning new column names to the data set
colnames(allData)<- columns_allData

#  creating a second independent tidy data set with the average of each variable 
#  for each activity and each subject.
allData_mean<- allData %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))
write.table(allData_mean, "tidy_data.txt", row.names = FALSE, quote = FALSE)




