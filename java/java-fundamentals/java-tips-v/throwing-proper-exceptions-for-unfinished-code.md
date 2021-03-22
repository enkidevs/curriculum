---
author: hyousaf
type: normal
category: best-practice
---

# Throwing proper exceptions for unfinished code


---

## Content

If you haven't completed a library or class, its often better to add an `UnsupportedOperationException` with a good description. 

```java
public DataEval<T> evalData(T data) {
   throw new UnsupportedOperationException(
       "Compare lib Incomplete");
}
```

This will

a) throw an exception when its called, notifying the user what's happened

b) act as a reminder and give other people awareness why it is not complete
