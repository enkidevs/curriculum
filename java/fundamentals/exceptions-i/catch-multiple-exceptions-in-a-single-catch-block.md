---
author: adamMontgomerie
type: normal
category: tip
tags:
  - exceptions
  - jdk-7
links:
  - >-
    [docs.oracle.com](http://docs.oracle.com/javase/7/docs/technotes/guides/language/catch-multiple.html){website}
  - >-
    [javarevisited.blogspot.jp](http://javarevisited.blogspot.jp/2014/04/10-jdk-7-features-to-revisit-before-you.html){website}
---

# Catch multiple exceptions in a single `catch` block


---

## Content

It is possible to catch multiple types of exception within a single `catch` block. For example:

```java
try {
  ...
} catch (IOException e) {
  //do something
} catch (SQLException e) {
  //do the same thing
}
```

If we want to do the same thing whether we catch an `IOException` or an `SQLException`, such as print out a stack trace, then we will have repeated code. 

In JDK 7+ we can condense the code into a single catch block using `|`:

```java
try {
  ...
}
catch(IOException | SQLException e) {
  //do something
}
```
