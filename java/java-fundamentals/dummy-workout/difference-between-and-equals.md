---
author: pawel

levels:

  - basic

  - beginner

type: normal

category: must-know

notes: ''

links:

  - >-
    [www.programmerinterview.com](http://www.programmerinterview.com/index.php/java-questions/java-whats-the-difference-between-equals-and/){website}

---
# Difference between `==` and `equals()`

---
## Content

Using `==` with a primitive `int` , `double`, `char` checks if values are identical. However using it with objects checks if they are stored in the same **memory location**.

By default, the `equals()` method actually behaves the same as the `==` operator. It can be however used to compare the contents of 2 objects, and not their location in the memory. It is achieved by overridding `equals` class whenever the object contents are compared, instead of the object locations.
 
