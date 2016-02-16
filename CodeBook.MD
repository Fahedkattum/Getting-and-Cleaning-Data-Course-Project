## CodeBook

##step 1

Files used for the analysis were read into tables, Values of Varible Activity consist of data from Y_train.txt and Y_test.txt
values of Varible Subject consist of data from “subject_train.txt” and subject_test.txt"
Values of Varibles Features consist of data from “X_train.txt” and “X_test.txt”
Names of Varibles Features come from “features.txt”
levels of Varible Activity come from “activity_labels.txt”

##step2

Data sets train and test were merged using "rbind". and the names were given to the variables, Subject, Activity and Features.

Using "cbind", All data were merged to produce one data set consisting of all data of each variable.

##step3 

3.1 conditions were applied to data were only data with Mean and Standard deviation were extracted and saved into a new vector: FeaturesWanted
using "grep" function.

3.2 data is subsetted with the FeaturesWanted using "subset" function.

##step4

Names(of variables) were were edited to be more descriptive and easire to read.


##step5

a new subdata with the mean of each variable of each subject and activity was created by melting .'alldata'-> cast'melted data'
with the applying the conditions needed.


