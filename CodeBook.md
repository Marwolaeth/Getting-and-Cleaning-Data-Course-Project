# Compressed UCI HAR Dataset Code Book

This data set represents compressed version of initial UCI HAR database (Human Activity Recognition Using Smartphones)
[*Anguita et al.*, 2013]. The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals.
Only certain measures from initial dataset were selected and grouped according to experimental units and activities.

## Notes on the initial dataset

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed
six activities (**walking**, **walking upstairs**, **walking downstairs**, **sitting**, **standing**, **laying**) wearing a smartphone (Samsung
Galaxy SII) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular
velocity was captured at a constant rate of 50Hz.

From each window, a vector of features was obtained by calculating variables from the time and frequency domain. The resulting
variables represented triaxial acceleration from the accelerometer (total acceleration), estimated body acceleration and triaxial
angular velocity from the gyroscope.

The dataset variables represented certain measures of initial variables (e.g. mean, standard deviation, minimum, maximum,
skewness, kurtosis etc.): 561 variables overall.

## The compressed dataset

For the needs of 'Getting and Cleaning Data' Coursera course project the initial dataset has undergone certain changes
(for detailed information about transformation process see 'ReadMe.md'). The compressed UCI HAR dataset contains 180 cases and
68 variables.

### The cases

Each case of the dataset concerned is a 'subject-activity' pair representing one of the six measured activities (**walking**,
**walking upstairs**, **walking downstairs**, **sitting**, **standing**, **laying**) for one of 30 experimental units (participants).
Thus the data contains **180 cases**, which is 6 activities for 30 subjects.

### The variables

The first two of **68 variables** represent subject and activity type. The rest were calculated as means of initial UCI HAR dataset
variables grouped by subject and activity.

- **subject** — a subject, or an experimental unit number
- **activity** — activity label (v.s.)
- **mean_tBodyAcc.mean.X** — mean (*hereinafter: for given subject and activity*) of mean linear body acceleration on X-axis
- **mean_tBodyAcc.mean.Y** — mean of mean linear body acceleration on Y-axis
- **mean_tBodyAcc.mean.Z** — mean of mean linear body acceleration on Z-axis
- **mean_tGravityAcc.mean.X** — mean of mean gravity acceleration on X-axis
- **mean_tGravityAcc.mean.Y** — mean of mean gravity acceleration on Y-axis
- **mean_tGravityAcc.mean.Z** — mean of mean gravity acceleration on Z-axis
- **mean_tBodyAccJerk.mean.X** — mean of mean body jerk linear acceleration on X-axis
- **mean_tBodyAccJerk.mean.Y** — mean of mean body jerk linear acceleration on Y-axis
- **mean_tBodyAccJerk.mean.Z** — mean of mean body jerk linear acceleration on Z-axis
- **mean_tBodyGyro.mean.X** — mean of mean body angular velocity on X-axis
- **mean_tBodyGyro.mean.Y** — mean of mean body angular velocity on Y-axis
- **mean_tBodyGyro.mean.Z** — mean of mean body angular velocity on Z-axis
- **mean_tBodyGyroJerk.mean.X** — mean of mean body jerk angular velocity on X-axis
- **mean_tBodyGyroJerk.mean.Y** — mean of mean body jerk angular velocity on Y-axis
- **mean_tBodyGyroJerk.mean.Z** — mean of mean body jerk angular velocity on Z-axis
- **mean_tBodyAccMag.mean** — mean of mean magnitude of linear body acceleration
- **mean_tGravityAccMag.mean** — mean of mean magnitude of gravity acceleration
- **mean_tBodyAccJerkMag.mean** — mean of mean magnitude of body jerk linear acceleration
- **mean_tBodyGyroMag.mean** — mean of mean magnitude of body angular velocity
- **mean_tBodyGyroJerkMag.mean** — mean of mean magnitude of body jerk angular velocity
- **mean_fBodyAcc.mean.X** — mean of mean linear body acceleration on X-axis frequency domain signals
- **mean_fBodyAcc.mean.Y** — mean of mean linear body acceleration on Y-axis frequency domain signals
- **mean_fBodyAcc.mean.Z** — mean of mean linear body acceleration on Z-axis frequency domain signals
- **mean_fBodyAccJerk.mean.X** — mean of mean body jerk linear acceleration on X-axis frequency domain signals
- **mean_fBodyAccJerk.mean.Y** — mean of mean body jerk linear acceleration on Y-axis frequency domain signals
- **mean_fBodyAccJerk.mean.Z** — mean of mean body jerk linear acceleration on Z-axis frequency domain signals
- **mean_fBodyGyro.mean.X** — mean of mean body angular velocity on X-axis frequency domain signals
- **mean_fBodyGyro.mean.Y** — mean of mean body angular velocity on Y-axis frequency domain signals
- **mean_fBodyGyro.mean.Z** — mean of mean body angular velocity on Z-axis frequency domain signals
- **mean_fBodyAccMag.mean** — mean of mean magnitude of linear body acceleration frequency domain signals
- **mean_fBodyBodyAccJerkMag.mean** — mean of mean magnitude of body jerk linear acceleration frequency domain signals
- **mean_fBodyBodyGyroMag.mean** — mean of mean magnitude of body angular velocity frequency domain signals
- **mean_fBodyBodyGyroJerkMag.mean** — mean of mean magnitude of body jerk angular velocity frequency domain signals
- **mean_tBodyAcc.std.X** — mean of standard deviations of linear body acceleration on X-axis
- **mean_tBodyAcc.std.Y** — mean of standard deviations of linear body acceleration on Y-axis
- **mean_tBodyAcc.std.Z** — mean of standard deviations of linear body acceleration on Z-axis
- **mean_tGravityAcc.std.X** — mean of standard deviations of gravity acceleration on X-axis
- **mean_tGravityAcc.std.Y** — mean of standard deviations of gravity acceleration on Y-axis
- **mean_tGravityAcc.std.Z** — mean of standard deviations of gravity acceleration on Z-axis
- **mean_tBodyAccJerk.std.X** — mean of standard deviations of body jerk linear acceleration on X-axis
- **mean_tBodyAccJerk.std.Y** — mean of standard deviations of body jerk linear acceleration on Y-axis
- **mean_tBodyAccJerk.std.Z** — mean of standard deviations of body jerk linear acceleration on Z-axis
- **mean_tBodyGyro.std.X** — mean of standard deviations of body angular velocity on X-axis
- **mean_tBodyGyro.std.Y** — mean of standard deviations of body angular velocity on Y-axis
- **mean_tBodyGyro.std.Z** — mean of standard deviations of body angular velocity on Z-axis
- **mean_tBodyGyroJerk.std.X** — mean of standard deviations of body jerk angular velocity on X-axis
- **mean_tBodyGyroJerk.std.Y** — mean of standard deviations of body jerk angular velocity on Y-axis
- **mean_tBodyGyroJerk.std.Z** — mean of standard deviations of body jerk angular velocity on Z-axis
- **mean_tBodyAccMag.std** — mean of standard deviations of magnitude of linear body acceleration
- **mean_tGravityAccMag.std** — mean of standard deviations of magnitude of gravity acceleration
- **mean_tBodyAccJerkMag.std** — mean of standard deviations of magnitude of body jerk linear acceleration
- **mean_tBodyGyroMag.std** — mean of standard deviations of magnitude of body angular velocity
- **mean_tBodyGyroJerkMag.std** — mean of standard deviations of magnitude of body jerk angular velocity
- **mean_fBodyAcc.std.X** — mean of standard deviations of linear body acceleration on X-axis frequency domain signals
- **mean_fBodyAcc.std.Y** — mean of standard deviations of linear body acceleration on Y-axis frequency domain signals
- **mean_fBodyAcc.std.Z** — mean of standard deviations of linear body acceleration on Z-axis frequency domain signals
- **mean_fBodyAccJerk.std.X** — mean of standard deviations of body jerk linear acceleration on X-axis frequency domain signals
- **mean_fBodyAccJerk.std.Y** — mean of standard deviations of body jerk linear acceleration on Y-axis frequency domain signals
- **mean_fBodyAccJerk.std.Z** — mean of standard deviations of body jerk linear acceleration on Z-axis frequency domain signals
- **mean_fBodyGyro.std.X** — mean of standard deviations of body angular velocity on X-axis frequency domain signals
- **mean_fBodyGyro.std.Y** — mean of standard deviations of body angular velocity on Y-axis frequency domain signals
- **mean_fBodyGyro.std.Z** — mean of standard deviations of body angular velocity on Z-axis frequency domain signals
- **mean_fBodyAccMag.std** — mean of standard deviations of magnitude of linear body acceleration frequency domain signals
- **mean_fBodyBodyAccJerkMag.std** — mean of standard deviations of magnitude of body jerk linear acceleration frequency domain signals
- **mean_fBodyBodyGyroMag.std** — mean of standard deviations of magnitude of body angular velocity frequency domain signals
- **mean_fBodyBodyGyroJerkMag.std** — mean of standard deviations of magnitude of body jerk angular velocity frequency domain signals

For complete information about the data transformation process see 'ReadMe.md'.

## Citation
*Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity
Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine
Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.*
