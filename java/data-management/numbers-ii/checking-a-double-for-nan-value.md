---
author: tommarshall
type: normal
category: how-to
---

# Checking a double for `NaN` value


---

## Content

Comparisons of numbers with `NaN` values throw up errors due to the semantics of `NaN`.

```java
double x = 0.0;  
// NaN is returned when ans = infinity
double ans = Math.cos(1/x); 
if (Double.isNaN(ans)) {
  System.out.println("result is NaN");
}
```

The `isNaN()` method above is used to check whether the value is equal to `NaN`.
