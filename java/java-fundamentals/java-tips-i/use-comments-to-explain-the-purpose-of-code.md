---
author: adamMontgomerie
type: normal
category: tip
tags:
  - comments
links:
  - >-
    [Comment Best Practices](http://javarevisited.blogspot.co.uk/2011/08/code-comments-java-best-practices.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Use comments to explain the purpose of code


---

## Content

When commenting your code, it is not good practice to write what the code does line-for-line. In fact, if the code needs to be explained in this fashion, it is probably poorly written.

Instead, comments should explain the code at a higher level of abstraction. This means that it should explain what the code does in the context of the rest of the program.

For example:

```java
/*Takes a value as a parameter, increases 
it by 20% and returns that value*/
public BigDecimal addTax(BigDecimal cost) {
  BigDecimal costWithTax = 
    cost + (cost * 0.2);
  return costWithTax;
}
```

This comment is not very helpful. The method is fairly simple, and any programmer should be able to see *what* is happening; what we are more interested in is *why*.

```java
/*Adds a 20% VAT tax to the product's cost*/
```

This comment is better because it explains the purpose of the method; *why* we are adding 20% to `cost`.


---

## Revision

Which of the following comments best describes the purpose of the code below?

```java
public BigDecimal addTax(BigDecimal cost) {
  BigDecimal costWithTax = 
    cost + (cost * 0.2);
  return costWithTax;
}

// A
/*Adds a 20% VAT tax to the product's cost*/

// B
/*Takes a value as a parameter, increases 
it by 20% and returns that value*/

// C
/*Returns a tax value*/
```

???

- A
- B
- C