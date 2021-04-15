---
author: Russiee
type: normal
category: caveats
links:
  - >-
    [www.securecoding.cert.org](https://www.securecoding.cert.org/confluence/display/java/OBJ05-J.+Do+not+return+references+to+private+mutable+class+members){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Do not return *references* to private *mutable* class members


---

## Content

Returning references to `mutable private class` members allows for the opportunity to **corrupt** the internal state of a class *maliciously* or *accidentally*.

```java
class MutableClass {
  private Date d;

  public MutableClass() {
    d = new Date();
  }

  public Date getDate() {
    return d;
  }
}
```

`getDate()` returns the sole instance of the `Date` object, and so an untrusted caller may manipulate this `Date` object.

A safer alternative is to simulate the `clone()` behavior and create a new copy of the object to return:

```java
public Date getDate() {
  Date newD = new Date(d.getTime());
  return newD;
}

```

This returns a defensive copy of the `Date` object, which itself is *mutable*.

It means that the caller cannot manipulate the original private `Date` object.


---

## Practice

What is a *mutable object* ?

???

- An object that can be modified after instantiation.
- An object that cannot be modified after instantiation.
- An object with no fields.
- An object with no methods.


---

## Revision

Which of the following is a way of preventing mutable private fields from being modified outside the class?

???

- Getters should return a copy of the mutable field instead of the field itself.
- Getters should return the field itself.
- Avoid the use of setters.


---

## Quiz

### Can you identify a Java security vulnerability?


What does this code print?

```java
class MutableClass {
  private int[] array;

  public MutableClass() {
    array = new int[10];
    array[0] = 1;
  }

  public int[] getArray() {
    return array;
  }

  public void printEl() {
    System.out.println(array[0]);
  }
}

public class Main {
  public static void main(String[] args) {
    MutableClass test = new MutableClass();
    int[] array = test.getArray();
    System.out.println(array[0]);
    array[0] = 2;
    test.printEl();
  }
}
```

 ???

- 1 and 2
- 1 and 1
- 2 and 1
- error: array has private access
