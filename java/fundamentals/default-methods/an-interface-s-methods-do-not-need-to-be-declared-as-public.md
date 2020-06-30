---
author: adamMontgomerie
type: normal
category: must-know
tags:
  - interface
  - public-methods
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/IandI/index.html){website}
---

# An interface's methods do not need to be declared as `public`


---

## Content

It is not necessary to declare an interface's methods as `public`. This is because every method defined within an interface is implicitly `public`.

As its name suggests, an interface defines a class' public interface; that is the set of methods which external callers can call to interact with that class or its instances.

`private` methods, by definition, are not part of a class' interface because external callers cannot access them. Therefore there would be no purpose in defining `private` methods within an interface.
 
