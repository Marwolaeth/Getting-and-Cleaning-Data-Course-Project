# UCI HAR Dataset Compression

The script 'run_analysis.R' was created as a part of 'Getting and Cleaning Data' course project. It deals with UCI HAR dataset for human activity recognition using smartphones.

## The Task

As according to the course project desription, the task was to create a script that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

All operations were conducted using R 3.2. The only necessary package is 'reshape'.

## The process

### Getting and reading data
The first part of the scripted is to download the data if it is absent. If the folder doesn't exist, then R is told to unzip the zip file, and if the latter doesn't exist, then the programm must download it first from an URL given.

### 1. Mergin two initial datasets
The script reads two initial datasets ('X_train.txt' and 'X_test.txt') into R using *read.table* function. Then it reads subject labels ('subject_train.txt' and 'subject_test.txt') and activity labels ('Y_train.txt' and 'Y_test.txt') for both tables. Then it creates two new data frames with *cbind* function adding subject and activity labels to their corresponding tables. Then, as far as number of columns is the same for both train and test data frames, it merges them into one using *rbind*.

### 2. Extracting the measurements on the mean and standard deviation
We use the features list in 'features.txt' as an appropriate variable names vector. The script loads it using *readLines*. Then we search for features containing 'mean()' or 'sd()' using regular expressions and index them into index vector. We then select the first two columns (subject and activity) from initial data frame as well as variables of interest using the index mentioned above + 2 (for our dataset contaion two additional columns at the beginning).

### 3. Using descriptive activity names
First, we save summary on 'activity' variable using *as.factor* into an R object so that we can compare the frequencies later to avoid any mistakes and disorder. Decriptive activity names are stored in the file called 'activity_labels.txt'. We load it using *readLines* and then apply a special function to the elements of this new character vector to delete numbers and whitespace before the activity names. We then assign the names to initial activity values using *factor* function and *order* argument to keep the initial order.

### 4. Labeling the data set with descriptive variable names
We already have variable names from 'features.txt' which are as descriptive as it is possible for complex concepts like those used in the HAR dataset. We now only delete numbers and whitespace from the names applying a special function to the whole vector and then assign the names to our variables.

### 5. Creating a tidy data frame
The goal is to create a new data frame with the average of each variable for each activity and each subject. To do this, we load the 'reshape' package.

As a first step, we create a long data frame using *melt* function keeping subject and activity variables as id's. The second step is aggregate the means of variables grouping by subject and activity using the *cast* function.

The result is 180x68 data frame. The number of columns is 2 grouping variables (subject and activity) and 66 variables representing the means of initial variables for particular group. The number of rows is simply 30 subjects (experiment participants) x 6 activities.

Then we need to change the names of variables since they now represent means of initial measurments. We do this using *sapply* function with regular expressions. The pattern is 'mean_' + old variable name without brackets at the end.

Finally, the scripts saves the resulting data frame into a text file *write.table* function with *row.names* argument equal to 'FALSE'.

*Thanks for assessing my work! Good luck :)*
