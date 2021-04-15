---
author: AlexBroadbent
type: normal
category: tip
tags:
  - java
  - equals
  - comparison
  - beginner
  - simple
notes: >-
  Formatting of the second paragraph may need some tweaking, just to make the
  code sections a bit tidier.
---

# Equals operation on different data types


---

## Content

When comparing objects of different type, use either the `==` comparator or the `.equals()` method.

Primitive objects are checked using the format `object1 == object2`. 

```java
boolean b1 = true;
boolean b2 = false;
boolean b3 = (b1 == b2); // false
```

Whereas non-primitive objects inherit or define the equals method, so the format is then `object1.equals(object2)`. For example:

```java
String s1 = "Hello";
String s2 = "World";
boolean b1 = s1.equals(s2); // false
```

The `==` expression can be used on objects to compare the reference of the object. 

```java
Object o1 = new String("Hello World!");
Object o2 = o1;
boolean objectsEqual = (o1 == o2); // true
```

The `o1 == o2` expression compares that the data that is pointed to by the variable `o1` is the same as `o2` and not that both objects are the string "Hello World!".
