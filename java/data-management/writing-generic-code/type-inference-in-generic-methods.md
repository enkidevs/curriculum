---
author: nickdaminov
type: normal
category: feature
links:
  - >-
    [More on Type Inference for
    Methods](https://docs.oracle.com/javase/tutorial/java/generics/genTypeInference.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Type Inference in Generic Methods


---

## Content

Type inference is a feature of generic methods which allows you to call them as if they were ordinary methods i.e. without specifying the type in between `<>`. For example:

```java
public <E> boolean oneBiggerThanTwo(
  E one, E two) {
  //in this case we will have to use
  //our own Util class, as 'compare'
  //method is not necessarily
  //specified for all type 'E'
  //parameters
  return Util.compare(one, two);
}
```

Then we can call it by:

```java
boolean bool1 = <Integer>oneBiggerThanTwo
                (Integer.valueOf(13),
                Integer.valueOf(37));
//or using type inference
boolean bool2 = oneBiggerThanTwo
                (Integer.valueOf(13),
                Integer.valueOf(37));
```

Type inference means that there is no need to specify type parameters when calling a function as compiler will do it for you.


---

## Revision

What does type inference do?

???

- It allows you to omit specifying type parameters upon calling a method
- It allows you to call an abstract method if it has a 'default' return value
- It allows you to change then return type of a method depending on the input
