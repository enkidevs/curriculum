---
author: mihaiberq
type: normal
category: tip
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Testing Private Methods and Fields


---

## Content

Times may come when you will have to test **private** methods. As using *inner classes* to write tests is *not advisable* (as tests would likely end up in production), three other methods are to be considered.

The least intrusive method is to test **the contract** that class has with other objects: did all data affected by the private method call change accordingly? If it did, then you can assume the code works as expected. With this approach, you can test the side-effects of your private function.

Another option is to use **reflection**. Reflection can be used for observing and modifying program execution. It allows for instantiation of objects and invocation of methods that would otherwise be private.

Say your class is similar to `User` in that it has a private method that you want to test:

```java
class User {
  String name;

  public User(String newName) {
    name = newName;
  }

  private boolean checkHashPass(String hash) {
    String userHashedPass = "...";
    return userHashedPass.equals(hash);
  }
}
```

To target the private method, you need to match its arguments signature. For this, we instantiate an array of `Class`es, with its first and only item a `String` class (because our method only accepts a string as input):

```java
import java.lang.reflect.Method;

Class[] arg = new Class[1];
arg[0] = String.class;

// look for "checkPassHash()" method
Method toTest = User
  .class
  .getDeclaredMethod(
    "checkHashPass",
    arg
  );
```

Because it is a private method, we need to make it accessible before invoking it:

```java
toTest.setAccessible(true);
toTest.invoke(
  john,
  "test hash"
);
```

A requirement of this code is that **it must include** error handling. Both code blocks above need to be wrapped in a `try/catch` with the following catches:

```java
import java.lang.reflect.InvocationTargetException;
// this import is required for error handling

try {
  // ...
} catch (NoSuchMethodException e) {  
    System.out.println(e.toString());
} catch (IllegalAccessException e) {
    System.out.println(e.toString());
} catch (InvocationTargetException e) {
    System.out.println(e.toString());
}
```

> Note: If you omit this step, Java will throw an error.

The last option would be to **refactor** said class. Maybe the class to be tested does too much and some functionality can be moved inside another class. This, again, is a matter of *software design*.


---

## Practice

JUnit can test private methods by itself.

???

- False
- True


---

## Revision

The least intrusive method of unit testing private methods and fields is to

???

- test the contract between the classes
- use reflection to gain access to the private methods
- refactor the class
- define an inner testing class
