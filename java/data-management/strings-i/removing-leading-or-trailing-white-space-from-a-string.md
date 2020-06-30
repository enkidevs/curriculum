---
author: adamMontgomerie
type: normal
category: tip
tags:
  - strings
  - string-manipulation
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/data/manipstrings.html){website}
---

# Removing leading or trailing white space from a string


---

## Content

Sometimes strings will contain unnecessary white space at the beginning or end. This is often due to user input. Unnecessary white space can be removed by using `String.trim()`.

For example:

```java
String original = "    Enki    ";
String trimmed = original.trim();
System.out.println(trimmed);
```

The output printed by the example above will be: `Enki`.
