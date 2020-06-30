---
author: pawel
type: normal
category: tip
tags:
  - java-interface
links:
  - >-
    [www.javaworld.com](http://www.javaworld.com/article/2077421/learn-java/abstract-classes-vs-interfaces.html){website}
notes: ''
---

# Abstract class vs interface in Java


---

## Content

You can only extend one class (abstract or not) whereas you can always implement one or more interfaces. 

Interfaces helps Java support multiple inheritance. Abstract classes let you define some behaviors, forcing your subclasses to provide others. For example with an application framework, an abstract class can provide default services such as event and message handling. 

It is often forgotten that a class that defines an abstract method can call that method as well. Abstract classes are an excellent way to create planned inheritance hierarchies.
 
