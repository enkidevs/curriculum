---
author: Nick Daminov

levels:

  - beginner

  - basic

type: normal

category: feature


links:

  - '[Oracle Bit Operations Documentation](https://docs.oracle.com/javase/tutorial/java/nutsandbolts/op3.html){website}'


---

# Bitwise Operations in Java

---

## Content

_Java_ provides us with certain bitwise operations, i.e. operations on concrete bits of the binary representation of the value. Such operations are:

- `&` - _AND_ operator returns `1` if both bits are `1`.
- `|` - _inclusive OR_ or _OR_ operator returns `1` if both or at least one bit is `1`.
- `^` - _exclusive OR_ or _XOR_ operator return `1` if one but not both bits are `1`.
- `~` - _unary bitwise complement operator_ inverts bit pattern, i.e. swaps every `0` to `1` and every `1` to `0`.

This is very similar to how correlated logical operators work but on all bits throughout the length of the binary data:

```
public class Main{
  public static void main(String args[]) {
    int a = 1; //0001 in binary
    int b = 5; //0101 in binary
    System.out.println(a & b);
    //&:   0001
    //     0101
    //
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

What does _AND_ operation return if the input bits are `1` and `0`?

???

What does _OR_ operation returns if the input bits are `1` and `0`?

???

- `0`
- `1`
