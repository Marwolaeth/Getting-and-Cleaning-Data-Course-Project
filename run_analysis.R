# Download the data and unzip the files
if(!file.exists('UCI HAR Dataset')) {
  if(!file.exists('UCI HAR Dataset.zip')) {
    download.file(
'https://d396qusza40orc.cloudfront.net/getdata/projectfiles/UCI HAR Dataset.zip'
      , 'UCI HAR Dataset.zip')
    (date.downloaded <- date())
  }
  unzip('UCI HAR Dataset.zip')
}
date.downloaded
# [1] "Wed Jul 22 18:09:02 2015"

setwd('UCI HAR Dataset') # Switch to project data folder

# 1. Merge the training and the test sets to create one data set
train <- read.table('train/X_train.txt')
test  <- read.table('test/X_test.txt')
dim(train); dim(test) # same number of columns

train_subs <- read.table('train/subject_train.txt')
test_subs  <- read.table('test/subject_test.txt')
nrow(train_subs); nrow(test_subs) # nrows same as in corresponding data frames

train_labels <- read.table('train/y_train.txt')
test_labels  <- read.table('test/y_test.txt')
nrow(train_labels); nrow(test_labels) # same number of rows

train <- data.frame( # add subjects and activities
  subject  = train_subs$V1,
  activity = train_labels$V1,
  train
)
test  <- data.frame( # add subjects and activities
  subject = test_subs$V1,
  activity = test_labels$V1,
  test
)
dim(train); dim(test) # 563 columns (561 initial + 2 for subject and activity)
summary(train) # icludes 563 variables, run carefully
summary(test)  # icludes 563 variables, run carefully

har <- rbind(train, test) # columns are the same, then merge the data frames
dim(har)
summary(har)
har[1:10, 1:5]

# 2. Extract only the measurements on the mean and standard deviation for
# each measurement
features <- readLines('features.txt') # search variable names in 'features.txt'
features # and find names that contain "mean()" or "sd()"
means <- grep('mean\\(', features) # create an index of measurements on the mean
sds   <- grep('std\\(',  features) # create an index of measurements on the std
(vars  <- union(means, sds)) # create an index of both mean and std measurments

har <- har[,c(1:2, vars + 2)] # extract subject, activity and mean and std
dim(har) # 66 variables extracted + 2 variables for subject and activity
summary(har[,1:5])

# 3. Use descriptive activity names to name the activities in the data set
summary(har[[2]]); (before <- summary(as.factor(har[[2]]))) # labels before
(activities <- readLines(
  'activity_labels.txt')) # read activity labels from file
(activities <- sapply(activities, # get rid of numbers and whitespace
                      function(x) {substr(x, regexpr(" ", x) + 1, nchar(x))}))
har$activity <- factor(activities[har$activity],
                       levels = activities) # keep the initial order
summary(har[[2]]) # after
before # compare the sets to ensurethere are no mistakes or disorder
### Match!

# 4. Appropriately label the data set with descriptive variable names
names <- features[vars] # use the names from initial data set features
### Variable names without digits and whitespace
(names <- sapply(names, function(x) {substr(x, regexpr(" ", x) + 1, nchar(x))}))
names(har)[3:length(har)] <- names
names(har)
summary(har)

# bonus:
har$subject <- factor(har$subject) # subject is rather a factor than quantity
summary(har[, 1:5])

# 5. Create a second, independent tidy data set with the average of each
# variable for each activity and each subject

library(reshape) # for 'melt' and 'cast' functions
### Step 1.
har.long <- melt(har, id = c('subject', 'activity')) # creating a long data set
head(har.long)
### Step 2.
har.means <- cast( # aggregating variable means by subject and activity
  har.long, subject + activity ~ variable, mean
)

### See what we've got here:
dim(har.means) # 180 rows = 30 subjects * 6 activities, 68 variables
head(har.means)
har.means[1:50, 1:6] # a better glimpse

### Rename the variables since we now have only the means of them
oldnames <- names(har.means)[3:length(har.means)] # keep old variable names
names(har.means)[3:length(har.means)] <- sapply( # avoid changing the first 2
  oldnames, function(x) {paste0('mean_', gsub('\\(\\)', '', x))})
# the pattern is 'mean_' + old variable name without those brackets
names(har.means)

write.table(har.means, 'UCI_HAR.txt', quote = FALSE,
            sep = "\t", row.names = FALSE) # Save the file
UCI_HAR <- read.table('UCI_HAR.txt', header = TRUE) # Open the table
UCI_HAR[1:50, 1:6] # looks ok. 111 :)