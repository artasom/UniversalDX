#In this exercise you will show your proficiency in using R and connecting R to 
#a higher level language (like Java). Feel free to use your own 
# dataset or use the one provided on the following link http://archive.ics.uci.edu/ml/datasets/Leaf

# loading required libraries
library(RWeka)
library(Rserve)

# loading information
iris.csv <- read.csv("/Users/artasom/UniversalDX_artasom_r/iris.csv")

Rserve()

# the function *trainer* will return a classifier trained according to the data received
trainer <- function (trainingData) {
        NB <- make_Weka_classifier("weka/classifiers/bayes/NaiveBayes")
        # The default options for Naive Bayes classifier are used
        NB.trained.classifier <- NB(Species ~ ., data = trainingData)
}

# The function *labels* will received non-labeled test data and 
# will return labels (predictions) for the input data
labels <- function (inputData) {
        # The classifier is trained with the iris.csv file data
        classifier <- trainer(iris.csv)
        # And the trained classifier is used to predict the labels for the input data
        predict(classifier, type="class",newdata = inputData)
}

# Possible call in r
# labels(iris.csv[c(sample(1:nrow(iris.csv),10,replace=FALSE)),-5])
