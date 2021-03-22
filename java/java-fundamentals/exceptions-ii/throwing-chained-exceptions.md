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

# Throwing chained `exceptions`


---

## Content

It is sometimes useful to be able to throw an exception in response to an exception; this is called *chaining exceptions*.

A new chained exception can be created by using the following syntax:

```java
try {
  //code which might throw an exception
}
catch(Exception e) {
  throw new Exception(
    "chained exception", //message
    e  //Throwable object
  ); 
}
```

The new `Exception` object takes two parameters; the first is a message to be displayed, and the second is the `Throwable` object which caused the exception.
