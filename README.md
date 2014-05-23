UniversalDX Assigment
=====================

# Folders 

There are two folders in this repository.

## UniversalDX

The first folder, UniversalDX, contains an Eclipse workspace with a Java project that loads an R script and calls the 'labels' function to obtain a prediction on a certain data set.

## UniversalDX_artasom_r

The other folder, UniversalDX_artasom_r, contains the R script with the functions of this language required in the assignment plus the datasets. The R scripts loads the required libraries and the dataset that is used for the training; it also launches the Rserve server.

# Dataset

The iris dataset in csv format is used for this assignment. The url where it was obtained (last access, 24th of May, 2014, 00:58) https://code.google.com/p/dataminingproject/source/browse/DataMiningApp/datasets/Iris/iris.csv?r=44

For the prediction, a subset of this dataset is used. It was obtained selecting ten rows randomly with the following R command: *iris.csv[c(sample(1:nrow(iris.csv),10,replace=FALSE)),-5]*

# Paths 

In both the java and R code, there are some hardcoded paths that have to be adapted to run in other environments and/or machines.