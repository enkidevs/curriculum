---
author: fahimrahman
type: normal
category: best-practice
tags:
  - javadoc
  - comment
  - practices
links:
  - >-
    [www.oracle.com](http://www.oracle.com/technetwork/java/javase/documentation/index-137868.html){website}
---

# Use Javadoc comments to describe the purpose of a class or method


---

## Content

A Javadoc comment starts with the opening tag `/**` and includes a description of a class or method, followed by additional info on what the method takes as parameter, the return type and more. 

For example:

```java
/**
 * Returns the marks scored by a student.
 * @param  surname the student's surname
 * @param  id the student's nine-digit ID
 * @return the student's average marks
 */
public int getMarks(String surname, int id)
{
    // method body
    return marks;
}
```

The Javadoc is generated in HTML format from the source code and acts as reference for programmers. They are especially helpful when working on large projects.
