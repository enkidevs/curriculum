---
author: nickdaminov
type: normal
category: feature
links:
  - >-
    [Official Annotation
    Description](https://docs.oracle.com/javase/tutorial/java/annotations/index.html){website}
  - >-
    [More on Annotation
    Elements](https://docs.oracle.com/javase/specs/jls/se8/html/jls-9.html#jls-9.6.1){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What Are Annotations?


---

## Content

*Annotations* are a way of describing the code without changing its functionality (in most cases). We can think of annotations as comments which compiler or JVM understand and can suppress or raise compile and run time errors.

Java provides you with some predefined annotations which is pretty much all that is used in practice, but you can create your own. Any custom annotation must start with `@interface` followed by the name, the contents of annotation are method with either default or undefined values, these method can be of these return types:

- A primitive type
- String
- Class or an invocation of Class
- An enum type
- An annotation type
- An array type whose component type is one of the preceding types

Example:

```java
@interface EnkiAnnotation {
   String author() default "Enki";
   String date();
   double version() default 1.0;
   String lastModified();
   String[] contributors();
}
```

**NOTE:** whenever the method has no `default` value, it return value must be specified on each usage.

You can split all *annotations* into three types:

- *Marker Annotation* (has no elements)
- *Single-Element Annotation*
- *Multi-Element Annotation*

Custom annotations can be used to create documentation automatically which means that there is no need to create `XML` or any other descriptive files manually.


---

## Practice

Can we have a 2D array as a method type in an annotation?

???

What is a *marker* annotation?

???

- No
- Annotation with no elements
- Annotation with a single element
- Yes


---

## Revision

What is an annotation?

???

- Metadata about a piece of code which can be understood by a compiler or JVM
- It is an interface which has to be implemented in order to
