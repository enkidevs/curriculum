---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice


links:

  - '[stackoverflow.com](http://stackoverflow.com/questions/3463658/are-64-bit-assignments-in-java-atomic-on-a-32-bit-machine){website}'

notes: >-
  https://insights.enki.com/#/contrib/others/55f00de0f457f33b00621144?search=khandelwalrinki

---

# Why use `volatile` `long` or `double`

---
## Content

When multi threading read/writes operations with 64 bit values, you need to take into consideration that `long` and `double` values are not atomic. That means that a single write or read is treated as two separate operations: one to each `32 bit` half.

```java
class SampleLong { 
  private long i = 0; //OR double  
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

In order to avoid this problem, `long` and `double` values need to be granted atomicity. 

```java
private volatile long i = 0;
```
Making the field `volatile` will guarantee its atomicity.

 
