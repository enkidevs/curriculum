# Histograms
author: claremarie

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[link to learn more](https://enki.com)'

---
## Content

A histogram is a type of plot used to show the distribution of a list of numbers. Histograms can be used to visualize spread, identify outliers, and observe patterns and tendencies of the data. Two or more histograms can be used to compare the mean, median, range, and overall distribution of multiple data sets.

Histograms are constructed by dividing the data into continuous segments, usually of the same size. These segments are called *bins*.

This simple example shows a dataset of 8 integers divided into 5 bins.

[0, 1, 4, 5, 5, 6, 8, 9]

<!---
Find image at eda-one-var-plots.ipynb
-->

This was created by observing the range of the values (in this case, 0 to 9) and making a thoughtful decision about how to segment the data. By choosing a range from 0 (inclusive) to 10 (exclusive) for the histogram, the dataset can be divided into 5 segments, each with a width of 2. The data is the *binned* and plotted by counting the number of values that appear in each segment:

```
| Segment | Values in segment | Count |
| [0, 2) | 0, 1 | 2 |
| [2, 4) | - | 0 |
| [4, 6) | 4, 5, 5 | 3 |
| [6, 8) | 6 | 1 |
| [8, 10) | 8, 9 | 2 |
```


In real-world situations, the number of datapoints will generally be much greater than the number of bins. For example, the following histogram shows a dataset of 100 integers divided into 10 bins:

---
## Practice

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2

---
## Revision

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2
