# Retention Annotation
author: nickdaminov

levels:

  - medium

type: normal

category: pattern

links:

  - '[More on Retention Annotation](https://docs.oracle.com/javase/specs/jls/se8/html/jls-9.html#jls-9.6.4.2)'

---
## Content

*Retention* annotation is a *meta annotation* i.e. it describes other annotations. In this case it used to choose where the indicated annotation is available to be seen:
 * Visible in code only: `RetentionPolicy.SOURCE`
 * Stored in binary with the class it is applied to: `RetentionPolicy.CLASS`
 * Can be seen by JVM at a runtime: `RetentionPolicy.RUNTIME`

Example:
```
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

---
## Practice

Where will `EnkiAnn` be available to access?

???

What should the value be of a `RetentionPolicy` be in order for an annotation to be seen only in the source code?

???

* At runtime
* RetentionPolicy.SOURCE
* At compilation time only but not when the program runs
* The RetentionPolicy should not be specified
* Inside the source code only

---
## Revision

What is the `retention` annotation used for?

???

* To indicate where the following annotation is visible
* To include the following annotation in the documentation
* To indicate that the following annotation can be applied more than once in the same declaration
