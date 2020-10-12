---
author: adamMontgomerie
type: normal
category: tip
tags:
  - strings
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=80){website}
---

# Replace a substring


---

## Content

`String.replace` can be used to replace a substring with another substring.

```java
String car = "blue car";
String oldColor = "blue";
String newColor = "red";
car = car.replace(oldColor, newColor);
```

In the above example, `replace` searches the string `car` for the value of `oldColor`, which is "blue". Any instances of "blue" are then replaced with `newColor`, which is "red". The final value of `car` is "red car".
