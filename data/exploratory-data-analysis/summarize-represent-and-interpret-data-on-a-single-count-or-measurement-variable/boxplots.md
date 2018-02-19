# Representing one-dimensional data with a boxplot

author: claremarie

levels:

  - basic

type: normal

inAlgoPool: false

category: fundamental

tags:

  - central-tendency
  - statistics

stub: true

notes: 'child of the quartiles section. need to look up exact metadata syntax'

---
## Content

A box plot, or box-and-whisker plot, is a visual representation of a one-dimensional dataset based on the quartiles of that dataset. A typical box plot will look something like this:

<!---
Find image at eda-one-var-plots.ipynb
-->

The central box represents the *interquartile range*, which contains the data that falls between Q1 and Q3. The vertical line in the middle of the box represents the median. The horizontal lines extending from each of side of the box represent the range of data below Q1 (on the left) and greater than Q3 (on the right), and the ticks at each end of these "whiskers" represent one of two things, either:

1) the minimum and maximum values of the dataset
2) the smallest (left) and largest (right) data points that fall within a specified distance from Q1 or Q3, respectively

This second option is used to account for the presence of extreme values in the data set, called *outliers*. A box-and-whisker plot in which the whiskers extend to an extreme minimum or maximum value can give a misleading picture of how the data are distributed.

Consider the following plots:

One-dimensional scatterplot:

Boxplot with whiskers extending to minimum and maximum:

Boxplot showing outliers:



<!---
Find images at eda-one-var-plots.ipynb
-->

While the first boxplot is simpler (and simplicity has value in EDA), it's clear that the second boxplot does a better job of accurately representing the distribution.

The method for determining what defines and outlier will be covered in another insight.


---
## Practice

<!--Which of the following is true of the distributions represented by these boxplots?

A. distribution A has a wider interquartile range
B. distribution B has a greater median
C. distribution A has a greater maximum
D. distribution B has a greater minimum

* A and C
* B and C
* A and D
* A, B and D



---
## Revision
