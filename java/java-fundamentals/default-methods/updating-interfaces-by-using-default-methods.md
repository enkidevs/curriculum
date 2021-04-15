---
author: adamMontgomerie
type: normal
category: tip
tags:
  - interfaces
  - default-method
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/IandI/defaultmethods.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Updating interfaces by using `default` methods


---

## Content

Take the following interface:

```java
public interface Cooking {
  public void fry();
  public void boil();
  public void chop();
}
```

To add new functionality, simply adding a new method to `Cooking` called `microwave()` will cause problems. Any class that previously implemented `Cooking` will now have to be updated in order to function again.

To avoid this, give `microwave()` a default implementation:

```java
public interface Cooking {
  public void fry();
  public void boil();
  public void chop();
  default void microwave() {
    //some code implementing microwave
  }
}
```

As `microwave()` already has a `default` implementation defined in the `Cooking` interface definition, classes that implement it now don't need to implement `microwave()` in order to work.

This allows us to add functionality without breaking old code.

**Note**: This has been possible since *Java 8*.


---

## Practice

Add a new method to an interface without breaking classes implementing it:

```java
public interface Move{
  public void byCar(){}
  public void byAirplane(){}
  ??? ??? byWalking(){
   // default implementation
  }
}
```

- `default`
- `void`
- `private`
- `static`
- `public`


---

## Revision

Which type of method declared in an interface requires some kind of implementation inside the said interface?

???

- Only default ones.
- None.
- All.
- Non-default methods.
