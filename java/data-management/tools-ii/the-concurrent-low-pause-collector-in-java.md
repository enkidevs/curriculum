---
author: pawel
type: normal
category: tip
tags:
  - garbage-collection
links:
  - >-
    [www.oracle.com](http://www.oracle.com/technetwork/java/gc-tuning-5-138395.html#0.0.0.%20The%20Concurrent%20Low%20Pause%20Collector%7Coutline){website}
---

# The Concurrent Low Pause Collector in Java


---

## Content

The concurrent low pause collector attempts to reduce the pause times needed to collect the tenured (containing longer lived objects) generation. It uses a separate garbage collector thread to do parts of the major collection concurrently with the applications threads. Optimal results have been observed for using it with interactive applications.

To enable the concurrent collector use the command line option shown below:

```plain-text
XX: +UseConcMarkSweepGC
```
 
