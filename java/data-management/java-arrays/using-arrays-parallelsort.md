---
author: catalin
type: normal
category: feature
links:
  - >-
    [www.javacodegeeks.com](http://www.javacodegeeks.com/2013/04/arrays-sort-versus-arrays-parallelsort.html){website}
notes: 'https://insights.enki.com/insight/55c839baae32453400962645'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Using `Arrays.parallelSort`


---

## Content

Amongst the new Java8 features includes new methods in the `java.util.Arrays` class.

Basic syntax for sorting into ascending numerical order:

```java
Arrays.parallelSort(myArray);
```

To sort a range:

```java
Arrays.parallelSort(myArray, int fromIndex,
 int toIndex);
```

`parallelSort` uses the Fork/Join framework introduced in Java 7 to assign the sorting tasks to multiple threads available in the thread pool.

It implements a parallel sort-merge algorithm that recursively breaks the array into 4 pieces, sorts them and merges them.

In comparison with the previous `sort()` method, `parallelSort` efficiency increases directly proportional with the number of elements in the array. 

```java
      Elements  | Serial | Parallel
          602   |  0.001 |  0.004        
         2492   |  0.007 |  0.007        
       318976   |  0.419 |  0.152        
      5103616   |  1.578 |  0.686   
```

For small arrays (up to around 2000 elements) `sort()` remains the best choice.


---

## Practice

Sort the given array in parallel from indexes `6` to `100`:

```java
???.???(
  myArray, 
  6, 
  100
);
```

- `Arrays` 
- `parallelSort` 
- `Array` 
- `sort()` 
- `Sorting`


---

## Revision

When sorting a small array (up to `2000` elements), what methods is considered more efficient?

???

- `sort()` 
- `parallelSort()`
