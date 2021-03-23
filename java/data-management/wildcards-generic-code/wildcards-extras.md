---
author: nickdaminov
type: normal
category: feature
links:
  - >-
    [More on
    Generics](https://docs.oracle.com/javase/tutorial/java/generics/inheritance.html){website}
  - >-
    [More on
    WildCards](https://docs.oracle.com/javase/tutorial/java/generics/subtyping.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Wildcards Extras


---

## Content

Suppose we have class `A` and class `B` which `extends A`. Then consider:

```java
B b = new B();

//this line works just fine
A a = b;
List<B> listOfB = new ArrayList<>();

//this line results in
//compile-time error
List<A> listOfA = listOfB;
```

The point being that although `b` is a subtype of `a`, `List<B>` is not an subtype of `List<A>`. Instead they are both subtypes of `List<?>`.

```java
List<? extends Integer> intList
                      = new ArrayList<>();
//This code will pass
List<?> wildList = intList;
List<? extends Object> objList = intList;
List<? extends Number>  numList = intList;
```

**NOTE:** `<?>` is the same as `<? extends Object>` as `Object` is the top class in *Java*.


---

## Revision

What is `<?>` equivalent to?

???

Suppose we have `class A` and `class B extends A`.
Considering the `B` is a subtype of `A`, is `List<B>` a subtype of `List<A>`?

???

- `<? extends Object>`
- No
- `<? super Object>`
- Yes
- In this case we can not tell
