---
author: adamMontgomerie

type: normal

category: tip

tags:
  - inheritance
  - constructors

links:
  - >-
    [Using the Keyword super](https://docs.oracle.com/javase/tutorial/java/IandI/super.html){website}

---

# Default Constructors


---

## Content

If there is no constructor explicitly defined in a subclass, the Java compiler will automatically add a no-argument constructor of its superclass. 

If there is no such constructor in the superclass, there will be an error at compile time.

```java
public class SuperClass {
  public SuperClass() {}
}
public class SubClass extends SuperClass {
}
```

In the above example, the compiler will automatically insert `SuperClass`' constructor into `SubClass`.

If `SuperClass` had no constructor, then there would be an error. Note that the `Object` class has a no-argument constructor, so any class whose only superclass is `Object` will not generate this error.
