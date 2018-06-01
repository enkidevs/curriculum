---
author: Russiee

levels:

  - basic

  - advanced

  - medium

type: normal

category: caveats


links:

  - '[www.securecoding.cert.org](https://www.securecoding.cert.org/confluence/display/java/ERR02-J.+Prevent+exceptions+while+logging+data){website}'


---

# Prevent `exceptions` while logging Data

---

## Content

Successful logging can be _prevented_ by exceptions thrown while logging is in progress!

This allows potential attackers to _conceal_ _security vulnerabilities_ by preventing them from being logged.

```java
try {
  // ...
} catch (SecurityException se) {
  System.err.println(se);
  // Recover from exception
}
```

This is erroneous, as **firstly**, the error stream can be _closed_, preventing any more exceptions from being _recorded_.
**Secondly**, while writing the `SecurityException`, an `I/O Exception` could be thrown, overwriting the previous `SecurityException`.

Better practice is to use the `java.util.logging.Logger` API to record Exceptions:

```java
try {
  // ...
} catch(SecurityException se) {
  logger.log(Level.SEVERE, se);
  // Recover from exception
}
```

Only one logger is required for the entire program.
