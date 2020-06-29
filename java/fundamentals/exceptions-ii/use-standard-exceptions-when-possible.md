---
author: adamMontgomerie
type: normal
category: tip
tags:
  - exceptions
links:
  - >-
    [javarevisited.blogspot.co.uk](http://javarevisited.blogspot.co.uk/2013/03/0-exception-handling-best-practices-in-Java-Programming.html){website}
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/exceptions/creating.html){website}
---

# Use standard exceptions when possible


---

## Content

It is best to avoid creating your own exceptions if there are already existing standard exceptions which serve the same purpose. Most Java developers will be familiar with standard exceptions; so using them will make your code easier to understand for other people. 

Another advantage to standard exceptions is consistency; if the same type of exceptional circumstance arises, then the same type of exception should be thrown. 

For example, creating an exception called  `UnusableArgumentException` when there is already a standard `IllegalArgumentException` will confuse anyone who is already familiar with standard exceptions; is an unusable argument the same as an illegal one, or is it something different?

In general it is best to use standard exceptions whenever an appropriate exception exists.
 
