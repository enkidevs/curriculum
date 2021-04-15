---
author: adamMontgomerie
type: normal
category: must-know
tags:
  - generics
  - generic-methods
  - parameters
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/generics/bounded.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Using bounded type parameters in generic methods


---

## Content

Sometimes it may be appropriate to write a generic method, however it will not be possible for it to accept *every* type while still maintaining all the necessary functionality.

To solve this, use bounded type parameters to restrict generic methods from accepting arguments of a particular kind.

```java
public <T extends Shape>
  void drawAll(List<T> shapes) {
    for (Shape s: shapes) {
        s.draw(this);
    }
}
```

The above method is used to draw a list of shapes. Writing a generic method with an unbounded type parameter would cause problems because lists of other types cannot be drawn in this way.

By specifying that `<T extends Shape>` we guarantee that only `Shape` objects can be passed to the method.


---

## Revision

Declare a generic method that only takes Lists of subclasses of `Dog`:

```java
public <???>
   ??? pet(List<???> dogs) {
  for(each d : dogs){
     d.pet();
  }
}
```

- `T extends Dog`
- `void`
- `T`
- `int`
- `E`
- `List<Dog>`
