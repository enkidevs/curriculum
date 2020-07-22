---
author: pawel
type: normal
category: tip
tags:
  - byte
  - binary-convertion
notes: 'Gamified Insight, static workout'
---

# Negative `byte` values


---

## Content

In Java, the `byte` type is signed. There are 256 values of the `byte` type ranging from -128 to 127.

When converting an integer into a byte, only the least significant byte of the integer is taken, and the remaining bytes are ignored. The result can be negative even though the integer was positive:

```java
int next = in.read();
byte b = (byte)next;
if (b == 'é') { ... }
```

This test is *never* true even if `next` was equal to the Unicode value for the `é` character. That Unicode happens to be 233 which is not in a "safe" range (1-127)
