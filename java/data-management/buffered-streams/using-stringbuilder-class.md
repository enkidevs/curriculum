---
author: catalin
type: normal
category: best-practice
links:
  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/25138587/what-is-difference-between-mutable-and-immutable-string-in-java){website}
notes: |
  https://insights.enki.com/#/contrib/559f18b0d6128391005e604a
---

# Using `StringBuilder` class


---

## Content

`String` objects are **immutable**. That means they can not be changed after being created. 

```java
String str="Good";
str=str+" Morning";
```

The following code will:

- put `"Good"` in the String Pool.
- put `"Morning"` in the String Pool.
- create `"Good Morning"`  by concatenating   the first two and put it in the *Heap*.

This will create 3 different `String` objects. If many  manipulations are needed, this approach will decrease the application's performance.

Unlike `String`, `StringBuilder` class  behaves as an *array of characters*, providing **mutable** objects.

The main additional functionality provided by StringBuilder over String are the `insert` and `append` methods. Both methods  accept any datatype as a parameter.

You can replicate the code snippet above:

```java
StringBuffer str= 
new StringBuffer("Good");
  str.append("Morning");
  str.insert(4, " ");

```

- `append` attaches the parameter to the end of the string.
- `insert` inserts the parameter at the specified index.
