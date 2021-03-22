---
author: adamMontgomerie
type: normal
category: tip
tags:
  - exceptions
links:
  - >-
    [javarevisited.blogspot.co.uk](http://javarevisited.blogspot.co.uk/2013/03/0-exception-handling-best-practices-in-Java-Programming.html){website}
---

# Use descriptive error messages when catching exceptions


---

## Content

Using descriptive error messages can save a lot of debugging time. Avoid generic error messages like "unexpected error occurred" as these will not help you find the cause of the error. Describing *exactly* what went wrong will allow the programmer to get right to the problem.

```plain-text
Error: Invalid argument
```

This message tells us that an invalid argument was entered, but it doesn't tell us which argument or why it was invalid.

```plain-text
Invalid age: -5
```

This message is much more helpful. It tells us that the problem relates to the `age` property and that the value entered was `-5`. 

We now know where to look in our code for the problem, and have a good idea of why an exception was thrown.
 
