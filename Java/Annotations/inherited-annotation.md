# Inherited Annotation
author: nickdaminov

levels:

  - medium

type: normal

category: pattern

links:

  - '[Officeial @Inherited description](https://docs.oracle.com/javase/7/docs/api/java/lang/annotation/Inherited.html)'

---
## Content

`@Inherited` annotation is a *marker meta annotation* which indicates that the following annotation will be applicable to all the children of the class the following annotation was applied to.

---
## Revision

What functionality does `@Inherited` carry?

???

* It indicates that the following annotation will work on children of the applied class
* It indicates that the following class is abstract and should have children
* It indicates that the following class has a custom parent class
