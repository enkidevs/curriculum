---
author: nickdaminov
type: normal
category: feature
links:
  - >-
    [More on
    Serialization](https://www.tutorialspoint.com/java/java_serialization.htm){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What Is Serialization?


---

## Content

**Serialization** is a way to convert an object's state (i.e. the information about the object) to an array of bytes in *Java*. 

This information is retractable[1] and can be deserialized.

The motivation for using **serialization** might be the following points:

- Serialization is cross-platform i.e. it runs on a JVM and is independent of hardware configuration of the machine.
- It is easy to store information about an object as a local file simply by serializing it.
- Different machines running same code can communicate via network by sending and receiving serialized objects.

In order to serialize an object you will use tools/classes available in the `java.io` library so it is important to remember to import `import java.io.*` library.


---

## Revision

What is serialization?

???

- The way of converting information about an object into an array of bytes
- The way of making a class non extendable
- The way of making a class abstract
- None of the present options are true


---

## Footnotes

[1:Retractable]
In this context this means that the information about this class can be restored back.
