# Measures of central tendency

author: claremarie

levels:

  - basic

type: normal

inAlgoPool: false

category: fundamental

tags:

  - central-tendency
  - statistics

notes: 'this is my first attempt, so bear with me'

stub: true



---
## Content

One of the first questions you should ask when encountering numerical data is: "What is a typical value for this dataset?" But 'typical' can have different meanings, depending on both the data and the purpose of your analysis. Three common options, called 'measures of central tendency', are the *mean*, *median*, and *mode*.

In common parlance, the word 'average' is generally used to refer to the *mean*--more specifically, the *arithmetic mean*. The arithmetic mean is computed by finding the sum of all data points, and dividing by the total number of data points. For example, if a small plane is carrying four suitcases with weights 14kg, 25kg, 10kg, and 35kg, the mean weight of these suitcases is 21kg:

```
# find the total weight for all suitcases
14 + 25 + 10 + 35 = 84
# divide the total by the number of
# suitcases
82 / 4 = 21
```

The *median* is the value that divides the items in a data set such that half the items are smaller than the median, and half are larger than the median. When a list of numbers has an odd number of items, the item at the exact middle of the ordered list is the median.

```
# initial list of 5 items
[4, 7, 1, 9, 2]
# ordered list
[1, 2, 4, 7, 9]
# the median of this list is 4.
# There are 2 values less than 4,
# and 2 values greater than 4
```

When a list of numbers has an even number of items, the median is defined as the arithmetic mean of the two middlemost items in the ordered list.

```
# insert a 6th item into the original
# ordered list
[1, 2, 4, 7, 8, 9]
# compute the arithmetic mean of 4 and 7
4 + 7 = 11
11 / 2 = 5.5
# the median of this list is 5.5.
# There are 3 values less than 5.5,
# and 3 values greater than 5.5.
# Moreover, the largest value in the lower
# half and the smallest value in greater
# half are equidistant from the median.
```

The *mode* is the value which appears most often in a dataset. It is most commonly used with categorical data, or data that can take on a limited number of discrete values. For example, if an animal shelter is holding 6 dogs, 14 cats, and 3 rabbits, the modal pet type is `cat`. Not every data set has a mode.

---
---
## Practice

Considering the list of integers

`[3, 5, 2, 5, 4, 11]`

which measure(s) of central tendency is/are equal to 5?

*`median`
*`mode`
*`mean`
*`median and mode`
*`mean and mode`
*`median and mean`



---
## Revision

Given the ordered list of integers

`[1, 4, 4, 7, 10, 11, 29, 46]`

which is greater, the median or the mean?

*`median`
*`mean`
