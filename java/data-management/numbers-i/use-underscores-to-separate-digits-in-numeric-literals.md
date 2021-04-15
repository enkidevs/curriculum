---
author: adamMontgomerie
type: normal
category: feature
tags:
  - jdk-7
links:
  - >-
    [javarevisited.blogspot.jp](http://javarevisited.blogspot.jp/2014/04/10-jdk-7-features-to-revisit-before-you.html){website}
---

# Use underscores to separate digits in numeric literals


---

## Content

In JDK 7+, it is possible to place underscores '_' inside numeric literals in order to make them more readable.

One example use of this is to break a long series of digits such as a phone number into several sub-sections, by for example, separating the area code:

```java
int phoneNumber = 1234567890;
int phoneNumber = 12345_67890;
```

This can also be used break very large integer values to make them more readable; using underscores instead of commas. So 1,000,000,000 would become:

```java
int billion = 1_000_000_000;
```

Note that underscores must be placed in between digits; values that begin or end with an underscore are invalid.
