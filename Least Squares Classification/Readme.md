## Homework 7
### Problem statement 14.3
Iris classification. In this exercise you will develop and test a 3-class classifier for classifying the
flower Iris into three species: iris setosa, iris versicolor, and iris virginica, which we will refer to as
classes 1, 2, and 3, respectively. The classifier will use n = 4 features:<br>
x = (sepal length, sepal width, petal length, petal width).
<br>
The data set, which contains 150 examples, is a classic
one, first published in 1936 by the famous statistician Ronald Fisher. (At the very least, you might think 
about how much fun it would be to carry out the calculations needed in this exercise in 1936,
by hand.)
You will find the data set in iris_flower_data.jl. You can use the first 100 examples (2/3) for
training, and the last 1/3 for testing. (We have randomized the order of the examples in the data
set given.)
<br>
(a) Find 3 least squares regression classifiers, each one classifying one of the species against the
other two. Give the error rate for each classifier, on both the train and test sets.<br>
(b) Combine the three classifiers of part (a) into a 3-class classifier, and give the 3 × 3 confusion
matrix for the train and test sets.

