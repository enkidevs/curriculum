---
author: adamMontgomerie
type: normal
category: tip
tags:
  - inheritance
  - interfaces
  - default-methods
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/IandI/override.html){website}
---

# Instance methods are preferred over `default` methods


---

## Content

When a conflict between an instance method and a `default` method with the same signatures occurs, the Java compiler will use the instance method's implementation.

Take the following example:

```java
public class Vegetable {
  public String describe() {
     return "A vegetable";
  }
}
public interface Food {
  default public String describe() {
    return "Edible";
  }
}
public class Carrot
  extends Vegetable 
  implements Food {
  public static void main(String... args) {
    Carrot carrot = new Carrot();
    System.out.println(carrot.describe());
  }
}
```

Both `Vegetable` and `Food` contain an implementation of `describe()`. When `carrot.describe()` is called, it will print `"A vegetable"`. This is because `Food.describe()` is a `default` method, while `Vegetable.describe()` is an instance method.
