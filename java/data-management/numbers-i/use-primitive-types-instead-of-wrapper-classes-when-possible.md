---
author: hyousaf
type: normal
category: best-practice
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Use primitive types instead of wrapper classes when possible


---

## Content

Wrapper classes (Integer, Byte, Character...) are great but slow. Primitive types (int, byte, char...) are just values, whereas Wrapper classes store information about the entire object. When this information is not needed, it's better to use primitive data types.

E.g:

```java
int myAge = 15;
int hisAge = 15;

Integer myAgeInt = new Integer(15);
Integer hisAgeInt = new Integer(15);

boolean primComp = myAge == hisAge;
boolean wrapComp =
 myAgeInt.equals(hisAgeInt);
```

The first comparison is faster than the second, as the first just compares values but the second has additional checks about the objects being instances of Integer.


---

## Practice

What comparison is considered to be more efficient?

```java
// 1
int x = 4;
int y = 4;
bool compare1 = x == y;

//2
Integer a = new Integer(4);
Integer b = new Integer(4);
bool compare2 = a.equals(b);
```

???

- `compare1`
- `compare2`


---

## Revision

What are considered more efficient?

???

- `primitive types`
- `wrapper classes`
