---
author: adamMontgomerie
type: normal
category: how-to
tags:
  - exceptions
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/exceptions/creating.html){website}
  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/3776327/how-to-define-custom-exception-class-in-java-the-easiest-way){website}
---

# Creating new Exceptions


---

## Content

Creating your own exceptions allows you to differentiate exceptions thrown by your own classes from those thrown by others. It also allows you to differentiate between similar, related exceptions. You may also occasionally come across exceptions which are not already represented.

To create an exception, simply create a new `Class` which extends `Exception`. For example:

```java
public class NewException
  extends Exception {
  public NewException(String message) {
    super(message);
  }
  ...
}
```

New exceptions should only be created when necessary, as there is a variety of standard exceptions which can be used instead.
