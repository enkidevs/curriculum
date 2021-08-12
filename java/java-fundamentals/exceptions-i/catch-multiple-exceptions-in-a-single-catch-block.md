---
author: adamMontgomerie
type: normal
category: tip
tags:
  - exceptions
  - jdk-7
links:
  - >-
    [Catching Multiple Exception Types](http://docs.oracle.com/javase/7/docs/technotes/guides/language/catch-multiple.html){website}
---

# Catch multiple exceptions in a single `catch` block


---

## Content

It's possible to catch multiple types of exceptions in the same `catch` block. This is known as multi-catch, for example:

```java
try {
  // ...
} catch (IOException e) {
  // do something
} catch (SQLException e) {
  // do the same thing
}
```

In the code above, the two exceptions `SQLException` and `IOException` are handled in the same way, but we still have to write two individual catch blocks for them.

We can also condense the code into a single `multi-catch` block using `|`:

```java
try {
  // ...
}
catch(IOException | SQLException e) {
  // do something
}
```
---

## Revision

How can you condense two exceptions into a single `multi-catch` catch block?
```java
try {
  // ...
}
catch(IOException ??? SQLException e) {
  // do something
}
```

- |
- &
- %
- and