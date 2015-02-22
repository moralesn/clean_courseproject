      ## Author: Norberto R. Morales
      ## Project: Assignment 1- Generate tidy datasets
      ## Purpose: Learn to generate tidy data sets 
      ## Last Updated: 02/22/2015
      ## Machine(Windows 8): S/No: WB13966327
      ##------------------------------------------------------------------------
      # clear workspace
rm(list = ls()) 

      # set working directory
setwd("C:/Users/Antigone/Dropbox/Certifications/Coursera_Data Science/Cleaning Data/Assignment/Week 3")
getwd()
      ##------------------------------------------------------------------------
      ## Assignment 1: Generate Tidy Datasets and Retrive Statisticcs
      ##------------------------------------------------------------------------
      
      ##------------------------------------------------------------------------
      ## Retrive and merge test and training data sets 
      ##------------------------------------------------------------------------
      
      ## Read data .txt files and combine test and train datasets
testdata <- read.table("Data-Raw/UCI HAR Dataset/test/X_test.txt")
traindata <- read.table("Data-Raw/UCI HAR Dataset/train/X_train.txt")
sets <- rbind(testdata, traindata)
            
      ## Read subjects .txt files and combine test and train datasets
testsub <- read.table("Data-Raw/UCI HAR Dataset/test/subject_test.txt")
trainsub <- read.table("Data-Raw/UCI HAR Dataset/train/subject_train.txt")
sub <- rbind(testsub, trainsub)
      
      ## Read data labels .txt files and combine test and train datasets
testlabel <- read.table("Data-Raw/UCI HAR Dataset/test/y_test.txt")
trainlabel <- read.table("Data-Raw/UCI HAR Dataset/train/y_train.txt")
label <- rbind(testlabel, trainlabel)
      
      ## Remove temporary objects from memory
      rm(testdata, traindata, testsub, trainsub, testlabel, trainlabel)
      
      ##------------------------------------------------------------------------
      ## Label variables and keep only those variables of interest
      ##------------------------------------------------------------------------
      
      ## Read list of features for variables names in tidy data
features <- read.table("Data-Raw/UCI HAR Dataset/features.txt", 
                  stringsAsFactors=FALSE)
          
      ## Keep names listed in features
featuresnames <- features$V2

      ## Keep only the measurements on the mean and standard deviation for each
      ## measurement as columns 
measurements<- grepl("(std|mean[^F])", featuresnames, perl=TRUE)
      
      ## Provide readable names for variables in data 
sets <- sets[, measurements]
names(sets)
names(sets) <- featuresnames[measurements]
      original.names<-data.table(names(sets))
names(sets) <- gsub("tBody", "Time.Body", names(sets))
names(sets) <- gsub("tGravity", "Time.Gravity", names(sets))
names(sets) <- gsub("fBody", "FFT.Body", names(sets))
names(sets) <- gsub("fGravity", "FFT.Gravity", names(sets))     
names(sets) <- gsub("\\-mean\\(\\)\\-", ".Mean.", names(sets))
names(sets) <- gsub("\\-std\\(\\)\\-", ".Std.", names(sets))     
names(sets) <- gsub("\\-mean\\(\\)", ".Mean", names(sets))
names(sets) <- gsub("\\-std\\(\\)", ".Std", names(sets))    
names(sets) <- gsub("\\(|\\)", "", names(sets))
#names(sets) <- tolower(names(sets))
      final.names<-data.table(names(sets))
      
      ## Read activities data to include descriptive names in data
activities <- read.table("Data-Raw/UCI HAR Dataset/activity_labels.txt")
activities[,2] = gsub("_", "", tolower(as.character(activities[,2])))
label[,1] = activities[label[,1], 2]
names(label) <- "Activity"               
      
      ## Merge readable labels and activities
names(sub) <- "Subject"
tidy1 <- cbind(sub,label, sets)
      
      ##------------------------------------------------------------------------
      ##  Write first and second tidy data sets as text files
      ##------------------------------------------------------------------------
      
      ## Write first tidy data set as text file
write.table(tidy1, "Data/tidyfirst.txt", row.name=FALSE)
      
      ## Create a second, independent tidy data set with the mean of each 
      ## variable for each activity and each subject.
usub = unique(sub)[,1]
nsub = length(usub)
nact = length(activities[,1])
ntidy = length(names(tidy1))
tidy2= tidy1[ 1:(nsub*nact), ]
      
row = 1
for (sub in 1:nsub) {
      for (a in 1:nact) {
           tidy2[row,1] = usub[sub]
           tidy2[row,2] = activities[a, 2]
           tmp <- tidy1[tidy1$subject==sub & tidy1$activity==activities[a,2],]
           tidy2[row, 3:ntidy] <- colMeans(tmp[, 3:ntidy])
           row = row + 1
      }
}
      ## Write second tidy data set as text file
write.table(tidy2, "Data/tidysecond.txt", row.name=FALSE)
      
      ## end of file.
      ##------------------------------------------------------------------------
      
      
      
