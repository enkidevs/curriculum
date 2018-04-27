---
author: adamMontgomerie

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

tags:

  - exceptions

links:

  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=27){website}

---
# Using specific exception types in the `throws` clause

---
## Content

In order to prevent the possible loss of important information about a thrown exception, it is usually preferable to be as specific as possible about the type of exception that a method can throw.

So if, for example, we know that our method can only throw a few specific IOExceptions; rather than this:
```
public method() throws Exception {
  //do something
}
```
We can write something like this:
```
public method() throws
  FileNotFoundException,
  EOFException {
  //do something
}
```