---
author: adamMontgomerie

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - inheritance

  - constructors


links:

  - '[docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/IandI/super.html){website}'


---

# Default constructors

---
## Content

If there is no constructor explicitly defined in a subclass, the Java compiler will automatically add a no-argument constructor of its superclass. 

If there is no such constructor in the superclass, there will be an error at compile time.

```
public void SuperClass {
  public SuperClass() {}
}
public void SubClass extends SuperClass {
}
```
In the above example, the compiler will automatically insert `SuperClass`' constructor into `SubClass`.

If `SuperClass` had no constructor, then there would be an error. Note that the `Object` class has a no-argument constructor, so any class whose only superclass is `Object` will not generate this error.

 
