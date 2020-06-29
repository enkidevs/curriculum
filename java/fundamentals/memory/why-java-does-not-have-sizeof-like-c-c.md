---
author: pawel
type: normal
category: tip
tags:
  - memory-allocation
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/cd/E13150_01/jrockit_jvm/jrockit/geninfo/diagnos/garbage_collect.html){website}
notes: ''
---

# Why Java does not have `sizeof` like C/C++


---

## Content

In C and C++ `sizeof()` allocates bytes for data items. It often varies for different machines or operating systems. For example an integer can be stored in 16 or 32 bits. 

Java stores precisely the same sizes on all machines, portability is the part of this language and we should not worry about it.
 
