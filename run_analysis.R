# run_analysis
### read all train set
# read training set
trainX <-read.table("train/X_train.txt")
trainY <-read.table("train/y_train.txt")
trainSubj <-read.table("train/subject_train.txt")
trainAll <- cbind(trainX,trainY, trainSubj)
# read test set
testX <-read.table("test/X_test.txt")
testY <-read.table("test/y_test.txt")
testSubj <-read.table("test/subject_test.txt")
testAll <- cbind(testX,testY, testSubj)

alldf <- rbind(trainAll, testAll)
# Descriptive Variable names....read features.txt to variable name the columns
features <-read.table("features.txt", col.names = c("Rowid", "feature"))
features1 <- data.frame(Rowid=562, feature="Labels")
features2 <- data.frame(Rowid=563, feature="Subject")
allfeatures <- rbind(features, features1, features2)
# assign the read features along with two other into the dataset names.
names(alldf) <- allfeatures$feature

library("dplyr")
## Remove duplicated columns
alldf <- alldf[, !duplicated(colnames(alldf))]
alldf.extract <- alldf %>% select(Labels, Subject, matches("mean|std",ignore.case = TRUE)) 

## Uses descriptive activity names to name the activities in the data set
activity_lables <-read.table("activity_labels.txt", col.names = c("Id", "activity_label")) 
alldf.merg <- merge(alldf.extract, activity_lables, by.x = "Labels", by.y = "Id", sort = FALSE)

# Appropriately labels the data set with descriptive variable names.
names(alldf.merg) <-gsub("\\(", "", names(alldf.merg))
names(alldf.merg) <-gsub("\\)", "", names(alldf.merg))
names(alldf.merg) <-gsub("-", "_", names(alldf.merg))
names(alldf.merg) <-gsub(",", "_", names(alldf.merg))
names(alldf.merg) <-gsub("BodyBody", "Body", names(alldf.merg))

# From the data set above, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
alldf.merg.avg <- alldf.merg %>% group_by(activity_label, Subject) %>% summarise_each(funs(mean))

# write the final output
write.table(alldf.merg.avg, "alldata_merged_with_mean.txt", row.names = FALSE)
