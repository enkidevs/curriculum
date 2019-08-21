---
author: adamMontgomerie

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

aspects:

  - workout

  - obscura

tags:

  - annotations

  - compiler-warnings

  - deprecation


links:

  - '[docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/annotations/predefined.html){website}'

---

# Suppressing warnings

---
## Content

It is occasionally appropriate to suppress a compiler warning. For example, if some legacy code needs to be integrated with a new system, and a deprecated method needs to be used to achieve this, we can use `@SuppressWarnings`: 
```java
@SuppressWarnings("deprecation")
public void method() {
  deprecatedMethod();
  ...
}
```
Compiler warnings are divided into categories. Deprecated methods fall under the `deprecation` category, so we can use `@SuppressWarnings("deprecation")` to suppress the compiler warning about using the deprecated method.

---
## Practice

What annotation should be used to suppress warnings about deprecated methods?
```java
@???(
     "???");
```

* `SuppressWarnings` 
* `deprecation` 
* `deprecated` 
* `Warnings` 
* `Suppress` 
* `IgnoreWarnings` 
* `methods`

---
## Revision

What annotation is used to suppress warnings?

`???`


* `SuppressWarnings` 
* `SuppressWarning` 
* `IgnoreWarnings` 
* `IgnoreWarning` 
* `CompilerDeprecate`
