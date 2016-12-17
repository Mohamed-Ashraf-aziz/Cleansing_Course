run_analysis <- function() {
#Load Test Data 

setwd("./UCI HAR Dataset/test")
test<-read.table("X_test.txt",header = FALSE)
#Read x_test dataset and load it into var Test
setwd("./UCI HAR Dataset")
col_names<-read.table("features.txt",header = FALSE)
#Read features dataset and load it into var col_names
names(test)<-col_names[,2]
#Adding names to original dataset (test)
setwd("./UCI HAR Dataset/test")
activiy_test<-read.table("y_test.txt")
#Read y_test dataset and load it into var activiy_test
names(activiy_test)<- "Activity"
#adding colname for dataset activiy_test
subject_test<-read.table("subject_test.txt")
#Read subject_test.txt dataset and load it into var subject_test
names(subject_test)<- "Subject"
#adding colname for dataset subject_test
test_Dataset<-test[,c(grep("mean|std",tolower(names(test))))]
#search for column names that contain "mean" or "std"
#and subset those columns into new dataset (test_dataset)
Final_test<-cbind.data.frame(test_Dataset,subject_test,activiy_test)
#bind test_dataset ,subject_test and activiy_test into Final_test dataset

  
#Load Train Data

setwd("./UCI HAR Dataset/train")
train<-read.table("X_train.txt",header = FALSE)
#Read x_train dataset and load it into var train
setwd("./UCI HAR Dataset")
col_names<-read.table("features.txt",header = FALSE)
#Read features dataset and load it into var col_names
names(train)<-col_names[,2]
#Adding names to original dataset (train)
setwd("./UCI HAR Dataset/train")
activiy_train<-read.table("y_train.txt")
#Read y_train dataset and load it into var activiy_train
names(activiy_train)<- "Activity"
#adding colname for dataset activiy_train
subject_train<-read.table("subject_train.txt")
#Read subject_train dataset and load it into var subject_train
names(subject_train)<- "Subject"
#adding colname for dataset subject_train
train_Dataset<-train[,c(grep("mean|std",tolower(names(train))))]
#search for column names that contain "mean" or "std"
#and subset those columns into new dataset (train_dataset)
Final_train<-cbind.data.frame(train_Dataset,subject_train,activiy_train)
#bind train_dataset ,subject_train and activiy_train into Final_train dataset


Final_dataset<-rbind(Final_test,Final_train)
#append train and test datasets into new dataset (Final_dataset)
Group<-group_by(Final_dataset,Activity,Subject)
#Grouping the data by Activity and Subject into new dataset Group
Summary<-summarise_each(Group,funs (mean))
#summerize the data by calculating mean for each column
#and save the result into new dataset (Summary)
write.table(Summary,"tidy_data.txt",row.names = FALSE)
#write Summary Data Set into File (tidy_data.txt)
}