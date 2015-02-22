#Code Book 

##Overview of Data:

Source of the original data:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Full description of data:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Variables:

Variables | Description| Data Type
----------|---------------|---------------------------------
Subject | Unit identifier| Integer
Activity | One of six activity labels| Factor
Sample Means of Measures | Average of measure by subject and activity| Numeric

Sample means of measures consist of 66 numeric variables with identical units to those in the original source data. The following is a list of the variable names in the tidy data.

             Original Names        |       Final Names
-----------------------------------|---------------------------
 1:           tBodyAcc-mean()-X    |      Time.BodyAcc.Mean.X
 2:           tBodyAcc-mean()-Y     |     Time.BodyAcc.Mean.Y
 3:           tBodyAcc-mean()-Z      |    Time.BodyAcc.Mean.Z
 4:            tBodyAcc-std()-X     |      Time.BodyAcc.Std.X
 5:            tBodyAcc-std()-Y     |      Time.BodyAcc.Std.Y
 6:            tBodyAcc-std()-Z     |      Time.BodyAcc.Std.Z
 7:        tGravityAcc-mean()-X   |    Time.GravityAcc.Mean.X
 8:        tGravityAcc-mean()-Y   |    Time.GravityAcc.Mean.Y
 9:        tGravityAcc-mean()-Z    |   Time.GravityAcc.Mean.Z
10:         tGravityAcc-std()-X    |    Time.GravityAcc.Std.X
11:         tGravityAcc-std()-Y    |    Time.GravityAcc.Std.Y
12:         tGravityAcc-std()-Z   |     Time.GravityAcc.Std.Z
13:       tBodyAccJerk-mean()-X   |   Time.BodyAccJerk.Mean.X
14:       tBodyAccJerk-mean()-Y   |   Time.BodyAccJerk.Mean.Y
15:       tBodyAccJerk-mean()-Z   |   Time.BodyAccJerk.Mean.Z
16:        tBodyAccJerk-std()-X   |    Time.BodyAccJerk.Std.X
17:        tBodyAccJerk-std()-Y   |    Time.BodyAccJerk.Std.Y
18:        tBodyAccJerk-std()-Z    |   Time.BodyAccJerk.Std.Z
19:          tBodyGyro-mean()-X     |    Time.BodyGyro.Mean.X
20:          tBodyGyro-mean()-Y    |     Time.BodyGyro.Mean.Y
21:          tBodyGyro-mean()-Z    |     Time.BodyGyro.Mean.Z
22:           tBodyGyro-std()-X    |      Time.BodyGyro.Std.X
23:           tBodyGyro-std()-Y    |      Time.BodyGyro.Std.Y
24:           tBodyGyro-std()-Z   |       Time.BodyGyro.Std.Z
25:      tBodyGyroJerk-mean()-X  |   Time.BodyGyroJerk.Mean.X
26:      tBodyGyroJerk-mean()-Y   |  Time.BodyGyroJerk.Mean.Y
27:      tBodyGyroJerk-mean()-Z   |  Time.BodyGyroJerk.Mean.Z
28:       tBodyGyroJerk-std()-X   |   Time.BodyGyroJerk.Std.X
29:       tBodyGyroJerk-std()-Y    |  Time.BodyGyroJerk.Std.Y
30:       tBodyGyroJerk-std()-Z    |  Time.BodyGyroJerk.Std.Z
31:          tBodyAccMag-mean()   |      Time.BodyAccMag.Mean
32:           tBodyAccMag-std()    |      Time.BodyAccMag.Std
33:       tGravityAccMag-mean()   |   Time.GravityAccMag.Mean
34:        tGravityAccMag-std()   |    Time.GravityAccMag.Std
35:      tBodyAccJerkMag-mean()  |   Time.BodyAccJerkMag.Mean
36:       tBodyAccJerkMag-std()  |    Time.BodyAccJerkMag.Std
37:         tBodyGyroMag-mean()    |    Time.BodyGyroMag.Mean
38:          tBodyGyroMag-std()   |      Time.BodyGyroMag.Std
39:     tBodyGyroJerkMag-mean()  |  Time.BodyGyroJerkMag.Mean
40:      tBodyGyroJerkMag-std()   |  Time.BodyGyroJerkMag.Std
41:           fBodyAcc-mean()-X     |      FFT.BodyAcc.Mean.X
42:           fBodyAcc-mean()-Y     |      FFT.BodyAcc.Mean.Y
43:           fBodyAcc-mean()-Z     |      FFT.BodyAcc.Mean.Z
44:            fBodyAcc-std()-X      |      FFT.BodyAcc.Std.X
45:            fBodyAcc-std()-Y    |        FFT.BodyAcc.Std.Y
46:            fBodyAcc-std()-Z    |        FFT.BodyAcc.Std.Z
47:       fBodyAccJerk-mean()-X    |   FFT.BodyAccJerk.Mean.X
48:       fBodyAccJerk-mean()-Y   |   FFT.BodyAccJerk.Mean.Y
49:       fBodyAccJerk-mean()-Z   |    FFT.BodyAccJerk.Mean.Z
50:        fBodyAccJerk-std()-X   |     FFT.BodyAccJerk.Std.X
51:        fBodyAccJerk-std()-Y   |     FFT.BodyAccJerk.Std.Y
52:        fBodyAccJerk-std()-Z   |     FFT.BodyAccJerk.Std.Z
53:          fBodyGyro-mean()-X    |      FFT.BodyGyro.Mean.X
54:          fBodyGyro-mean()-Y    |      FFT.BodyGyro.Mean.Y
55:          fBodyGyro-mean()-Z     |     FFT.BodyGyro.Mean.Z
56:           fBodyGyro-std()-X    |       FFT.BodyGyro.Std.X
57:           fBodyGyro-std()-Y    |       FFT.BodyGyro.Std.Y
58:           fBodyGyro-std()-Z     |      FFT.BodyGyro.Std.Z
59:          fBodyAccMag-mean()    |      FFT.BodyAccMag.Mean
60:           fBodyAccMag-std()    |       FFT.BodyAccMag.Std
61:  fBodyBodyAccJerkMag-mean() | FFT.BodyBodyAccJerkMag.Mean
62:   fBodyBodyAccJerkMag-std() |  FFT.BodyBodyAccJerkMag.Std
63:     fBodyBodyGyroMag-mean() |    FFT.BodyBodyGyroMag.Mean
64:      fBodyBodyGyroMag-std()  |    FFT.BodyBodyGyroMag.Std
65: fBodyBodyGyroJerkMag-mean()| FFT.BodyBodyGyroJerkMag.Mean
66:  fBodyBodyGyroJerkMag-std() | FFT.BodyBodyGyroJerkMag.Std
67: Subject |
68: Activity |

Activity variable consists of data in traindata: X_train.txt and testdata: X_test.txt.

Subject variable consists of data in trainsub: subject_train.txt and testsub: subject_test.txt.

Label variable consists of data in trainlabel: y_train.txt and testlabel: y_test.txt.

Features list come from data in features: features.txt.

Activity labels for variables come from data in labels: activity_labels.txt

##Steps:

The R script run_analysis.R performs takes several .txt formatted files containing raw data and transforms them
into two idenpendent tidy data sets.

1. Read each .txt file (training and test) from source data ("Data-Raw/").

2. Merge the training and test data sets to create one data set.

3. Read "features.txt" and only keep measurements of the mean and standard deviation for each measurement variable.

4. Read "activity_labels.txt" and applies readable activity names for each activity in the data set.

5. Label the data set with descriptive names that are simple and consistent. 

6. Merge a list of features with subject IDs and activity labels. 

6. Write an initial tidy data set as a text file to "Data/tidyfirst.txt"

7. Merge the average of each measurement for each activity and each subject to a second data set. 

8. Write a second, independent tidy data set as a text file to "Data/tidysecond.txt"

##Data Output:

First Dataset- tidyfirst.txt

* The first column contains subject identifiers (ID), which range between 1 and 30.
* The second column contains names of any six activities.
* The remaining 66 columns are variables measurements.

Second Datset (contains the mean of variables by subject and activity)- tidysecond.txt

* The first column contains subject identifiers (ID)
* The second column contains names of any six activities.
* The averages for each of the 66 variables are located in the remaining 66 columns.
