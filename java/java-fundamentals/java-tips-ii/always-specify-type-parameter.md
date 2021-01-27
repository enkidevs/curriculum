---
author: fahimrahman
type: normal
category: best-practice
tags:
  - raw-type
  - parameterized-type
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=224){website}
---

# Always specify type parameter


---

## Content

A *parameterized type* would look like:

```java
List<String> oceans = Arrays.asList(
   "Pacific", "Atlantic", "Indian");
```

Whereas, a *raw type* would look like:

```java
List oceans = Arrays.asList(
   "Pacific", "Atlantic", "Indian");
```

Although Java allows the use of raw types, they should be avoided since:

- Using a parameterized type allows compile time checks - less chances of errors.
- Raw types usually require casts to convert to a suitable type.
- They only exist to maintain backward compatibility with older versions of Java.
 
