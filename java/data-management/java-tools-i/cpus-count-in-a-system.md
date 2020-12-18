---
author: pawel
type: normal
category: tip
links:
  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/1980832/java-how-to-scale-threads-according-to-cpu-cores){website}
---

# CPUs count in a system


---

## Content

JDK from 1.4.x onwards allows us to use method `activeProcessorCount` in the `java.lang.Runtime` class. It returns the number of hardware processors currently available to the VM. It is typically used by large application to calculate the number of worker threads they should create.
 
