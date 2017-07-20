# Bitwise Operations in Java
author: nickdaminov

levels:

  - beginner

  - basic

type: normal

category: feature

links:

  - '[Oracle Bit Operations Documentation](https://docs.oracle.com/javase/tutorial/java/nutsandbolts/op3.html)'

---
## Content

*Java* provides us with certain bitwise operations, i.e. operations on concrete bits of the binary representation of the value. Such operations are:
 - `&` - *AND* operator returns `1` if both bits are `1`.
 - `|` - *inclusive OR* or *OR* operator returns `1` if both or at least one bit is `1`.
 - `^` - *exclusive OR* or *XOR* operator return `1` if one but not both bits are `1`.
 - `~` - *unary bitwise complement operator* inverts bit pattern, i.e. swaps every `0` to `1` and every `1` to `0`.

Example:
```
public class Main{
  public static void main(String args[]) {
    int a = 1; //0001 in binary
    int b = 5; //0101 in binary
    System.out.println(a & b);
    System.out.println(a ^ b);
    System.out.println(a | b);
    System.out.println (~a);
  }
}
The output is the following:
1
4
5
-2
```
The last result is `-2` because *Java* uses two's complement bit representation.

---
## Practice

What would be the output of `System.out.println(7 & 5);`, 7 = 0111, 5 = 0101?

???

* 5
* 0
* -5

---
## Revision

What does *AND* operation return?

???

What does *OR* operation returns?

???

* `1` if both bits are `1`
* `1` if both or at least one bit is `1`
* `1` if one but not both bits are `1`
