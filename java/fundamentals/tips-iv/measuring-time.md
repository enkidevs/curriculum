---
author: vish1891

levels:

  - basic

type: normal

category: how to

tags:

  - nanoTime()

  - currentTimeMillis()

  - time


links:

  - '[tutorials.jenkov.com](http://tutorials.jenkov.com/java-date-time/time-measurement.html){website}'


---

# Measuring time

---
## Content

Many applications require a very precise time measurement. 

`currentTimeMillis()` returns current time in milliseconds since Epoch Time, as a `long` variable:

```
long startTime = System.currentTimeMillis();
long estimatedTime 
  = System.currentTimeMillis() - startTime;
```

`nanoTime()` returns the current value of the most precise available system timer, in nanoseconds, in `long` form. `nanoTime()` is meant for measuring relative time intervals                   instead of providing absolute timing.

```
long startTime = System.nanoTime();
long estimatedTime 
  = System.nanoTime() - startTime;
```

---
## Revision

Which method is more precise than `currentTimeMillis()` when calculating absolute timing?

???

* nanoTime()
* nanoMillis()
* currentNanoMillis()
* timeMillis()

