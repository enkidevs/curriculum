---
author: nickdaminov
type: normal
category: feature
links:
  - >-
    [Oracle Bit Operations
    Documentation](https://docs.oracle.com/javase/tutorial/java/nutsandbolts/op3.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Bitwise Operations in Java


---

## Content

*Java* provides us with certain bitwise operations, i.e., operations on real bits of the binary representation of the value. Such operations are:

- `&` - *AND* operator returns `1` if both bits are `1`.
- `|` - *inclusive OR* or *OR* operator returns `1` if both or at least one bit is `1`.
- `^` - *exclusive OR* or *XOR* operator returns `1` if one but not both bits are `1`.
- `~` - *unary bitwise complement operator* inverts bit pattern, i.e. swaps every `0` to `1` and every `1` to `0`.

This is very similar to how correlated logical operators work but on all bits throughout the length of the binary data:

```java
public class Main{
  public static void main(String args[]) {
    int a = 1; // 0001 in binary
    int b = 5; // 0101 in binary
    System.out.println(a & b);
    //&:   0001
    //     0101
    //     0001
```


---

## Practice

What would be the output of `System.out.println(7 & 5);`, 7 = 0111, 5 = 0101?

???

- 5
- 0
- -5


---

## Revision

What does *AND* operation return if the input bits are `1` and `0`?

???

What does *OR* operation returns if the input bits are `1` and `0`?

???

- `0`
- `1`
