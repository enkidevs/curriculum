---
author: AlexBroadbent

levels:

  - medium

type: normal

category: tip

tags:

  - java

  - reference

  - shortcut

links:

  - >-
    [www.javaworld.com](http://www.javaworld.com/article/2077473/learn-java/java-tip-11--use-references-and-save-typing-time-.html){website}

---
# Using references to save repetition

---
## Content

When using common methods repeatedly, a shortcut can be used to save the time and effort involved in repeating the same code.

One example of this is the ```System.out.println()``` method call to write to the console.

Instead of typing:
```java
System.out.println("Hello");
System.out.println("World");
System.out.println("foo");
System.out.println("bar");
```

The bulk of code can be reduced by creating a local reference to `System.out`:
```
private static final PrintStream o
  = System.out;
o.println("Hello");
o.println("World");
o.println("foo");
o.println("bar");
```