---
author: adamMontgomerie
type: normal
category: tip
tags:
  - exceptions
  - chained-exceptions
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/exceptions/chained.html){website}
---

# Retrieving the cause of an exception


---

## Content

When using chained exceptions, it is useful to be able to find the cause of an exception. This can be done using the `getCause` method. For example:

```java
try {
  ...
}
catch (Exception e) {
  Throwable cause = e.getCause();
}
```

`getCause` will return the `Throwable` object which caused the current exception.

In the case of multiple chained exceptions, we could then call `getCause` again on the returned object `cause` to cycle through exceptions until we find the first exception which caused the chain.
