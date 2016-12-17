1.Read x_test dataset and load it into var Test
2.Read features dataset and load it into var col_names
3.Adding names to original dataset (test)
4.Read y_test dataset and load it into var activiy_test
5.adding colname for dataset activiy_test
6.Read subject_test.txt dataset and load it into var subject_test
7.adding colname for dataset subject_test
8.search for column names that contain "mean" or "std" and subset those columns into new dataset (test_dataset)
9.bind test_dataset ,subject_test and activiy_test into Final_test dataset
10.Read x_train dataset and load it into var train
11.Read features dataset and load it into var col_names
12.Adding names to original dataset (train)
13.Read y_train dataset and load it into var activiy_train
14.adding colname for dataset activiy_train
15.Read subject_train dataset and load it into var subject_train
16.adding colname for dataset subject_train
17.search for column names that contain "mean" or "std"
18.and subset those columns into new dataset (train_dataset)
19.bind train_dataset ,subject_train and activiy_train into Final_train dataset
20.append train and test datasets into new dataset (Final_dataset)
21.Grouping the data by Activity and Subject into new dataset Group
22.summerize the data by calculating mean for each column and save the result into new dataset (Summary)
23.write Summary Data Set into File (tidy_data.txt)