---
author: adamMontgomerie
type: normal
category: feature
tags:
  - annotations
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/annotations/predefined.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Using the `@Deprecated` annotation


---

## Content

The `@Deprecated` annotation can be used to indicate elements which should no longer be used. Any program that uses an element which is marked as `@Deprecated` will produce a compiler warning.

```java
@Deprecated
public void oldMethod() {
  ...
}
public void newMethod() {
  ...
}
```

In this examples, `newMethod` replaces `oldMethod`. However we do not want to remove `oldMethod` completely because keeping it will help maintain backwards compatibility with older versions of the program.

We can keep `oldMethod()` and indicate to programmers that it should not be used in new versions by applying the `@Deprecated` annotation.


---

## Practice

Which of the two methods will raise a warning saying it is deprecated and should not be used?

```java
public void one() {};
@Deprecated
public void two() {};
```

???

- `two()`
- `one()` 
- `none` 
- `both`


---

## Revision

Using a `@Deprecated` function will rise a ???.

- compiler warning
- compiler error
- run-time error
- run-time warning
