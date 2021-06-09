---
author: nickdaminov
type: normal
category: must-know
links:
  - >-
    [More on
    VarArgs](https://stackoverflow.com/questions/7607353/how-to-create-java-method-that-accepts-variable-number-of-arguments){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Variable Argument Function


---

## Content

**VarArgs** allows a function to accept a variable number of arguments in multiple forms. For example, assume that our function takes `Strings` as arguments:

```java
public static void
  varArgsFunc(String... args) {
    //doEnki
}
```

`VarArgs` were introduced with *Java 1.5*. The key difference between accepting an array and this method is that this one is more general, i.e:

```java
String[] args = {"Enki", "eNki", "enKi"};
//both method calls work
varArgsFunc(args);
varArgsFunc("Enki", "eNki", "enKi");
```

The arguments still have to be passed as an "array", and the collection should be the last in the order of arguments, otherwise a compile time error will be raised, this is because the compiler assumes unlimited number of elements in the collection:

```java
varArgsFunc(int A, String... stringArray){
    //doEnki
}
//The reason is that Java does not know
//where the collection ends
varArgsFunc(5, "Enki", "eNki");
```

## SafeVarargs

**SafeVarargs** annotation refers to a method that makes use of multiple arguments under `VarArgs` declaration. The point of this annotation is to force compiler to raise an error upon a wrong usage of these arguments.

Until Java 7, programmers had to implicitly specify `@SafeVarargs` to ensure that the compiler would throw a proper error. As of now, most compilers throw this error by themselves.


---

## Practice

If we pass a collection as well as other arguments to a function, where should the collection argument be passed?

???

- At the end of the argument list.
- It should be the first argument to be passed.
- The order of the arguments does not matter.


---

## Revision

What is *VarArgs*?

???

- It is a concept of passing an unlimited number of arguments to a function.
- It is a concept of unlimited array with variable number of arguments.
- It is a concept of passing arguments of various types to a function.
