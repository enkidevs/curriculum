---
author: adamMontgomerie

levels:

  - basic

  - beginner

type: normal

category: tip

tags:

  - strings

  - string-manipulation


links:

  - '[docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/data/manipstrings.html){website}'


---

# Converting a string to upper or lower case

---
## Content

A string can be converted from lower case to upper case or vice versa by using the `String` class' `toUpper()` or `toLower()` methods.

To make uppercase:
```
String lowerEnki = "enki";
System.out.println(lowerEnki.toUpper());
//output: "ENKI"

```

Or, to make lowercase:
```
String upperEnki = "ENKI";
System.out.println(upperEnki.toLower());
//output: "enki"
```

 
