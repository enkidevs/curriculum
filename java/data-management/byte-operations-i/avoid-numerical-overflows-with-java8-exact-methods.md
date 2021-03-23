---
author: catalin
type: normal
category: feature
links:
  - >-
    [howtodoinjava.com](http://howtodoinjava.com/2014/05/04/java-8-exact-airthmetic-operations-supported-in-math-class/){website}
notes: 'https://insights.enki.com/#/contrib/others/55f03d0d1baba32f002fd319?search=kha'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Avoid numerical overflows with *Java8* `exact` methods.


---

## Content

To avoid *numerical overflows* or *underflows* (that is assigning a value to a variable whose type size does not allow it), a specific set of methods have been added with **Java 8**.

The `Math` class has been enhanced with the release of **Java 8**, adding a new set of `exact` methods.

Adding two numbers:

```java
Math.addExact(a,b);
```

Multiplying two numbers:

```java
Math.multiplyExact(a,b);
```

Incrementing a number:

```java
Math.incrementExact(a);
```

 If an *overflow* or *underflow* occurs, then the methods will throw an `ArithmeticException` exception:

```java
System.out.println(100000 * 100000);
//output : 1410065408 (Incorrect result)
System.out.println(
 Math.multiplyExact(100000 , 100000));
//output : ArithmeticException thrown
```


---

## Practice

What exception will be thrown when an overflow or an underflow occurs using **exact** methods of the `Math` class?

???

- `ArithmeticException` 
- `FileNotFoundException` 
- `ArrayIndexOutOfBoundsException` 
- `ExactArithmeticException` 
- `OverflowlowException`


---

## Revision

What method can be used from the `Math` class such that numerical overflows and underflows are avoided during addition?

???

- `addExact` 
- `incrementExact` 
- `add` 
- `exactAdd`
