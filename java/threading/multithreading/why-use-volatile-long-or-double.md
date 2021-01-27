---
author: catalin
type: normal
category: best-practice
links:
  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/3463658/are-64-bit-assignments-in-java-atomic-on-a-32-bit-machine){website}
notes: >-
  https://insights.enki.com/#/contrib/others/55f00de0f457f33b00621144?search=khandelwalrinki
---

# Why use `volatile` `long` or `double`


---

## Content

When multi threading read/writes operations with 64 bit values, you need to take into consideration that `long` and `double` values are not atomic[1]. That means that a single write or read is treated as two separate operations: one to each `32 bit` half.

```java
class SampleLong { 
  private long i = 0; // OR double  
  void assignValue(long j) {
    i = j;
  }
  void printLong() {
    System.out.println("i = " + i);
  }
}
```

Bearing that in mind, this can result in a situation when a thread sees the former `32 bits` of the value while another thread sees the latter.

Imagine a scenario when a thread repeatedly calls the `assignValue` method and another one the `printLong` method. The last one can occasionally print a value of `i` that is neither `0` nor the value of `j` argument.

We've previously said that making the field `volatile` **will not guarantee its atomicity**. This is true, especially in the case of operations that require more than one read or write (like with `long` or `double` variables).

```java
private volatile long i = 0;
```

Making a variable `volatile` will guarantee that **each individual read or write operation** on the variable will be atomic. If you have more than one read or write operation (e.g. `i = i + 1`), this **will not be atomic**. This does not only apply to `long` and `double` variables, but also to all other types.


---

## Footnotes

[1:Atomic]
In programming, an operation (or a set of operations) is considered atomic if it appears to the rest of the system as a single, indivisible step.
