---
author: adamMontgomerie
type: normal
category: feature
tags:
  - switch
  - string
  - java-7
links:
  - >-
    [javarevisited.blogspot.jp](http://javarevisited.blogspot.jp/2014/04/10-jdk-7-features-to-revisit-before-you.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Use strings in a `switch` statement


---

## Content

In Java 7+, it is possible to use a string as a selector in a `switch` statement.

For example:

```java
String colorString;
switch(color) {
  case "red": colorString = "red";
    break;
  case "blue": colorString = "blue";
    break;
  default: colorString = "a color";
    break;
}
System.out.println("It's %s", colorString);
```

This promotes a more concise code, rather than using `if/else` statements.

The string comparisons are case sensitive.


---

## Revision

String comparisons in switch statements ??? case sensitive.

- are
- aren't
