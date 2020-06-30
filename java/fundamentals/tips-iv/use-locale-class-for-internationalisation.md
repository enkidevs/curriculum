---
author: adamMontgomerie
type: normal
category: feature
tags:
  - string
  - formatting
  - locale
links:
  - >-
    [docs.oracle.com](http://docs.oracle.com/javase/7/docs/api/java/util/Locale.html){website}
---

# Use `Locale` class for Internationalisation


---

## Content

The `Locale` class can be used to represent different regions, languages and scripts. We can use `Locale` to format output which is locale-sensitive. 

For example, in France, a comma is used in place of a decimal point in floating-point numbers. `Locale` can be used to achieve this in the following way:

```java
System.out.format(
  "%f", 3.14
);
//output: 3.14

System.out.format(
  Locale.FRANCE, "%f", 3.14
);
//output: 3,14
```
