# Wildcards Extras
author: nickdaminov

levels:

  - medium

type: normal

category: feature

links:

  - '[More on Generics](https://docs.oracle.com/javase/tutorial/java/generics/inheritance.html)'
  - '[More on WildCards](https://docs.oracle.com/javase/tutorial/java/generics/subtyping.html)'

---
## Content

Suppose we have a situation where you have class `A` and class `B` which `extends A`. Then consider:
```
B b = new B();

//this line works just fine
A a = b;
List<B> listOfB = new ArrayList<>();

//this line results
//compile-time error
List<A> listOfA = listOfB;
```
The point being that although `b` is a subtype of `a`, `List<B>` is not an subtype of `List<B>`. Instead they are both subtypes of `List<?>`.
```
List<? extends Integer> intList
                      = new ArrayList<>();
//This code will pass
List<?> wildList = intList;
List<? extends Object> objList = intList;
List<? extends Number>  numList = intList;
```

**NOTE:** `<?>` is the same as `<? extends Object>` as `Object` is the top class in *Java*.
---
## Practice

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2

---
## Revision

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2
