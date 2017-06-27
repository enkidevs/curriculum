# What is serialization?
author: nickdaminov

levels:

  - medium

type: normal

category: feature

links:

  - '[link to learn more](https://enki.com)'

---
## Content

**Serialization** is a way to convert an object's state (i.e. the information about the object) to an array of bytes in *Java*. This information is of course retractable[1] and can be deserialized.

The motivation for using **serialization** might be the following points:
- Serialization is cross-platform i.e. it runs on a JVM[2] and it does not require specific hardware or software configuration of the host.  
- It is easy to store information about an object as a local file simply by serializing it.
- Different machines running same code via network by sending and receiving serialized objects.

It is important to remember that in order to serialize an object you need to
`import java.io.*` library.

---
## Revision

What is serialization?
???

* The way of string information about an object into a stream of bytes
* The way of making a class non extendable
* The way of making a class abstract
* None of the present options are true

---
## Footnotes

[1:retractable]
In this context this means that the information about this class can be restored back.

[2:JVM]
Java Virtual Machine
