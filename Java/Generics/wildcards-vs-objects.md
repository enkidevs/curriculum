# Wildcards vs Objects
author: kld14

levels:

  - advanced

  - medium

type: normal

category: caveats

tags:

  - wildcard

links:

  - '[More on Generics by Oracle](https://docs.oracle.com/javase/tutorial/java/generics/index.html)'
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/extra/generics/morefun.html){website}

---
## Content

`Set<?>` can be used to indicate the apparent type of "any" set. The `?` is a wildcard. This wildcard can match any type.

A `String` can be added to `Set<Object>` because `String` is an `Object`. However, `String` cannot be added to `Set<?>` due to the fact that the wildcard in `Set<?>` could indicate something that is not a `String`, for instance, `Set<Scanner>`.

**NOTE:** it is important to remember that a generic type is a generic class or interface that is parameterized over types, while wildcard can be used in a variety of situations: as the type of a parameter, field, or local variable; sometimes as a return type. The wildcard is never used as a type argument for a generic method invocation, a generic class instance creation, or a supertype.
