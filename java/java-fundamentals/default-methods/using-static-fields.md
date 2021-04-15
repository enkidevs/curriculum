---
author: adamMontgomerie
type: normal
category: must-know
tags:
  - static
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/javaOO/classvars.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Using `static` fields


---

## Content

Marking a field as `static` indicates that it belongs to the class rather than instances of that class. This means that a `static` field will hold the same value for every instance that is created.

This could be useful for values that will stay the same for all objects of the same type; since it will prevent us from having to initialize the same value for each object.

Another use could be to keep count of something across all instances of a class. For example:

```java
public class Countable {
  private static int count;
  public Countable() {
    count++;
  }
  ...
}
```

The `count` field is `static`, so only one instance of it exists across all instances of `Countable`. Whenever a new instance is created, `count` is incremented by one. This means that `count` will store the number of instances that have been created.


---

## Practice

What does the following code snippet do? 

```java
public class Enki {
  private static int x;
  public Enki() {
    x++;
  }
}
```

???

- Keeps count of something across all instances of a class.
- Keeps count of something in an instance of a class.


---

## Revision

Marking a field as static shows it belongs to the class rather than ??? of that class.

This means that a static field holds ??? for every instance created.

- instances
- the same value
- methods
- functions
- a different value
- a related value
