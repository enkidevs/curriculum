---
author: adamMontgomerie

levels:
  - basic
  - advanced
  - medium

type: normal

category: tip

tags:
  - annotations
  - documentation
  - javadoc

links:

  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/annotations/declaring.html){website}

---
# Declaring an annotation type

---
## Content

It is possible to declare your own type of annotation. An annotation declaration looks similar to an interface declaration preceeded by an `@`:
```
@interface Introduction {
  String author();
  String date();
  String lastModified() default "N/A";
  String lastModifiedBy() default "N/A";
}
```
The `default` keyword allows us to set default values for elements in the annotation. If no value is set for `lastModified` then its default value of `"NA"` will be displayed.

The annotation type can now be used like this:
```
@Introduction {
  author = "me";
  date = "23/05/1984";
  lastModified = "30/05/1984";
  lastModifiedBy = "someone else";
}
```
The purpose of the annotation in this example is to include information in javadoc generated documentation. To make this annotation appear in the javadoc, the `@Documented` annotation needs to be used before `@Introduction`.
 
