---
author: adamMontgomerie
type: normal
category: feature
tags:
  - jdk-7
  - exceptions
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=25){website}
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/exceptions/tryResourceClose.html){website}
---

# Use try-with-resources instead of `finally`


---

## Content

A resource is an object that must be closed once the program has finished using it. In pre-JDK 7 versions, resources must be closed at the end of a `try` block using `finally`. 

In JDK 7+, it is possible to specify one or more resources at the beginning of a `try` block. Any specified resources will be closed at the end of the statement. For example:

```java
try (FileInputStream inputStream = 
  new FileInputStream("enki.txt")){
  //try something
}
```

In the above example the resource is the `FileInputStream` called `inputStream`. It will be automatically closed at the end of the statement whether or not the `try` block throws an exception.

It is important to note that try-with-resources will only work for resources that implement `AutoClosable`. It is still necessary to use `finally` to close resources without an implementation of `AutoClosable`.
