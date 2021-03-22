---
author: adamMontgomerie
type: normal
category: best-practice
tags:
  - exceptions
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/exceptions/advantages.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Be as specific as possible when catching exceptions


---

## Content

When specifying the type of exception to catch, it is generally preferable to be as specific as possible. For example:

```java
try {
  //open and read a file
} catch (Exception e) {
  //do something
}
```

This code will catch any kind of exception that is thrown. However, this is not necessarily a good thing. This is because any exception, including ones that the catch block is not capable of handling, will be caught.

Instead, we can use more specific catch blocks:

```java
try {
  //open and read a file
} catch (FileNotFoundException e) {
  //do something
}
```

In this case, the catch block only catches one type of exception. This allows us to create other catch blocks for different types of exception and specify behaviour for them individually.


---

## Revision

When handling exceptions, being more specific means:

???

- Catching a particular exception.
- Catching the generic exception.
- Having multiple try blocks.
