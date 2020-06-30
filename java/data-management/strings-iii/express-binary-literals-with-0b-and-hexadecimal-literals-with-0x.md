---
author: adamMontgomerie
type: normal
category: tip
tags:
  - binary
  - hexadecimal
  - jdk-7
links:
  - >-
    [javarevisited.blogspot.jp](http://javarevisited.blogspot.jp/2014/04/10-jdk-7-features-to-revisit-before-you.html){website}
---

# Express binary literals with `0b` and hexadecimal literals with `0x`


---

## Content

Binary values can be expressed using the `0b` or `0B` prefix.

```java
int binary = 0b0101110101;
```

In the same way, hexadecimal values can be expressed by adding the prefix `0x` or `0X`.

```java
int hex = 0x5A;
```

It is worth noting that in older versions of Java (pre-JDK 7), only the hexadecimal prefix is valid.
