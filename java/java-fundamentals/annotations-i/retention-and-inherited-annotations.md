---
author: nickdaminov
type: normal
category: pattern
links:
  - >-
    [More on Retention
    Annotation](https://docs.oracle.com/javase/specs/jls/se8/html/jls-9.html#jls-9.6.4.2){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Retention and Inherited Annotations


---

## Content

*Retention* annotation is a *meta annotation* i.e. it describes other annotations. In this case it used to choose at which stage of development this annotation is seen:

- Visible in code by programmers only: `RetentionPolicy.SOURCE`
- Stored in binary with the class it is applied to i.e. the compiler sees it but not JVM: `RetentionPolicy.CLASS`
- Can be seen by JVM at runtime: `RetentionPolicy.RUNTIME`

Example:

```java
@Retention(RetentionPolicy.RUNTIME)
@interface EnkiAnn {
  String name();
  int counter();
}

class TestClass{
  @EnkiAnn(name = "Enki", counter = 0)
  public void myTestMethod(){
      //method implementation
  }
}
```

**NOTE:** if the RetentionPolicy is not specified, the default value will be RetentionPolicy.CLASS

### Inherited

`@Inherited` annotation is another *marker meta annotation*. It indicates that the following annotation will be applicable to all the children of the class the next annotation was applied to.


---

## Practice

Where will `EnkiAnn` be available to access?

???

What should the value of a `RetentionPolicy` be in order for an annotation to be seen only in the source code?

???

- At runtime
- RetentionPolicy.SOURCE
- At compilation time only but not when the program runs
- The RetentionPolicy should not be specified
- Inside the source code only


---

## Revision

What is the `retention` annotation used for?

???

- To indicate where the following annotation is visible
- To include the following annotation in the documentation
- To indicate that the following annotation can be applied more than once in the same declaration
