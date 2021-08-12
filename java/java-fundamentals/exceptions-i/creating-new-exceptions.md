---
author: adamMontgomerie
type: normal
category: how-to
tags:
  - exceptions
links:
  - >-
    [Creating Exception Classes](https://docs.oracle.com/javase/tutorial/essential/exceptions/creating.html){website}
  - >-
    [Defining Custom Exceptions](http://stackoverflow.com/questions/3776327/how-to-define-custom-exception-class-in-java-the-easiest-way){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Creating new Exceptions


---

## Content

Creating your exceptions allows you to differentiate exceptions thrown by your classes from those thrown by others. It also allows you to differentiate between similar, related exceptions. You may also occasionally come across exceptions that are not already represented.

To create an exception, you can extend the `Exception` class. For example:

```java
public class NewException
  extends Exception {
  public NewException(String message) {
    super(message);
  }
  // ...
}
```

New exceptions should only be created when necessary, as there is a variety of standard exceptions which can be used instead.

---

## Revision

Complete the code to create a custom `Exception`:

```java
public ??? NewException
  ??? Exception {
  public NewException(String message) {
    super(message);
  }
  // ...
}
```

- class
- extends
- super
- def