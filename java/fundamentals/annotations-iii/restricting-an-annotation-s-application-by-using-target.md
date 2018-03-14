---
author: adamMontgomerie

levels:

  - basic

  - medium

type: normal

category: feature

tags:

  - annotations

  - meta-annotations


links:

  - '[docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/annotations/predefined.html){website}'


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
```
@Target(ElementType.CONSTRUCTOR) 
```
The annotation that is annotated with this will only be able to be applied to constructors.

---
## Practice

Complete the standard definition of a restricted annotation:

```
@???(
  ???.ELEMENT_TYPE);
```


* `Target` 
* `ElementType` 
* `Test` 
* `Annotation` 
* `Restrict` 
* `ElementName`

---
## Revision

Complete the standard definition of a restricted annotation using `@Target` :

```
@Target(
  ???.ELEMENT_TYPE);

```


* `ElementType` 
* `Constructor` 
* `Element` 
* `ElementName`

