---
author: adamMontgomerie
type: normal
category: pattern
tags:
  - static
  - utility-class
links:
  - >-
    [javarevisited.blogspot.jp](http://javarevisited.blogspot.jp/2011/11/static-keyword-method-variable-java.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Utility classes and `static` methods


---

## Content

Utility classes defines set of methods that perform common, often re-used functions. They do not depend on the state of any object, therefore should usually be declared as `static`.

```java
public class Utility {
  private Utility() {
  }
  
  public static multiply(int a, int b) {
    return a * b;
  }
  ...
}
```

In the example above, the `multiply` method is `static` and therefore we don't need to create an instance of `Utility` in order to call it. 

In order to prevent a caller from instantiating `Utility` constructor is made private.


---

## Revision

Utility classes define sets of methods that perform common methods which are often re-used. How should they be declared as ? 

???

- `static` 
- `void` 
- `private`
