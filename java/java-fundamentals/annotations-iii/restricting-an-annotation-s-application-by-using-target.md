---
author: adamMontgomerie
type: normal
category: feature
tags:
  - annotations
  - meta-annotations
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/annotations/predefined.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Restricting an annotation's application by using `@Target`


---

## Content

The type of element that an annotation can be applied to can be restricted using the `@Target` meta-annotation. 

The `@Target` declaration takes the form of `@Target(ElementType.<ELEMENT_TYPE>)`, where `<ELEMENT_TYPE>` is an element type from a predefined list. The available elements are:

- `ANNOTATION_TYPE`
- `CONSTRUCTOR`
- `FIELD`
- `LOCAL_VARIABLE`
- `METHOD`
- `PACKAGE`
- `PARAMETER`
- `TYPE` (any type of element)

For example:

```java
@Target(ElementType.CONSTRUCTOR) 
```

The annotation that is annotated with this will only be able to be applied to constructors.


---

## Practice

Complete the standard definition of a restricted annotation:

```java
@???(
  ???.ELEMENT_TYPE);
```

- `Target` 
- `ElementType` 
- `Test` 
- `Annotation` 
- `Restrict` 
- `ElementName`


---

## Revision

Complete the standard definition of a restricted annotation using `@Target` :

```java
@Target(
  ???.ELEMENT_TYPE);

```

- `ElementType` 
- `Constructor` 
- `Element` 
- `ElementName`
