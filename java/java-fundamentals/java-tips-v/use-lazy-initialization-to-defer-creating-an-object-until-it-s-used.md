---
author: fahimrahman
type: normal
category: tip
tags:
  - lazy-initialization
  - java
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=34){website}
---

# Use lazy initialization to defer creating an object until it's used


---

## Content

If the creation of an object is expensive or if the object is needed only under some specific condition, *lazy initialization* can be used to optimize performance.

```java
public class Carpenter {
  // Declaring the object
  private myTools myHammer;
  ...
  public myTools getMyHammer() {
    // Create the object when 
    // the method is called
    if (myHammer == null) {
      myHammer = new myTools();
      return myHammer; }
    ...
}
```

This has several advantages, such as:

1. Avoiding the initialization of a component in an application up front, thus helping the app to launch much quicker.
2. While working with low memory resources and computing power such as in embedded systems, one needs to be resource conscious.
