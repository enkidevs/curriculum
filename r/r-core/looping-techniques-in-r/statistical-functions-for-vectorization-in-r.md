---
author: Stefan-Stojanovic

tags:
  - introduction
  - discussion
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Statistical Functions

---

## Content

R has many built-in statistical functions that support vectorization.

Here are some common ones:
```r
vector <- 1:10
max(vector)
min(vector)
mean(vector)
median(vector)
sd(vector)
```

`max`: Returns the maximum value of an array or vector.
```r
max(1:10)
# 10
max(c(1, 3, 5, 7, 9))
# 9
```

`min`: Returns the minimum value of an array or vector.
```r
min(1:10)
# 1
min(c(1, 3, 5, 7, 9))
# 1
```

`mean`: Returns the mean (average) value of an array or vector.
```r
mean(1:10)
# 5.5
mean(c(1, 3, 5, 7, 9))
# 5
```

`median`: Returns the median value of an array or vector.
```r
median(1:10)
# 5.5
median(c(1, 3, 5, 7, 9))
# 5
```

`sd`: Returns the standard deviation of an array or vector.
```r
sd(1:10)
# 3.02765
sd(c(1, 3, 5, 7, 9))
# 3.162278
```

---
## Practice

Complete the following code snippet to calculate the standard deviation of the scores variable:
```r
scores <- c(100, 90, 80, 70, 60)
???
```

- `sd(scores)`
- `mean(scores)`
- `median(scores)`
- `max(scores)`


---
## Revision

What is the output of the following code?

```r
scores <- c(100, 90, 80, 70, 60)
mean(scores)
```

???

- `80`
- `85`
- `90`
- `95`
