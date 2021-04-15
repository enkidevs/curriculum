---
author: pawel
type: normal
category: feature
links:
  - >-
    [www.oracle.com](http://www.oracle.com/technetwork/java/javase/gc-tuning-6-140523.html#cms.floating_garbage){website}
notes: Not sure if not too generic
---

# Floating garbage and how to deal with it


---

## Content

Since garbage collector and application run concurrently on the machine during a major collection, objects that are traced by the garbage collector thread may subsequently become unreachable by the time collection finishes. Such unreachable objects are called floating garbage.

As a general rule, try increasing the size of the tenured generation by 20% to account for the floating garbage. Floating garbage in the heap at the end of one concurrent collection cycle is collected during the next cycle.
 
