---
author: adamMontgomerie

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

tags:

  - packages

  - import

links:

  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/package/usepkgs.html){website}

---
# Importing packages

---
## Content

Java contains a large class library. This library is organised as a set of packages. A package is a namespace which includes a set of related classes and interfaces.

A member of a package can be used by referring to it using it's fully qualified name. We can use the `Rectangle` class in the `graphics` package like this:
```
graphics.Rectangle r = new Rectangle();
```
However, having to always use the fully qualified name of classes can result in long and difficult to read code since some class names can be very long. In order to make our code more clear and concise, we can instead use `import`.

Importing a package, or package member, allows us to refer to package members by their simple name rather than their fully qualified name. For example:
```
import graphics.Rectangle;
Rectangle r = new Rectangle();
```
We can now use `Rectangle` without having to specify its package. If we wanted to use many of the classes in `graphics`, we could simply import the entire package like this:
```
import graphics.*;
```
 
