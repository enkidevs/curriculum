---
author: adamMontgomerie
type: normal
category: tip
tags:
  - numbers
  - strings
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/data/converting.html){website}
---

# Using `valueOf` to convert strings to numeric values


---

## Content

The `Number` class and its subclasses, such as `Integer`, all contain the method `valueOf` which can be used to convert strings containing numbers into a numeric format. 

```java
String string = "1234";
int i = Integer.valueOf(string).intValue();
```

This can also be used for `Double`, `Float`, `Long` and `Short`.
