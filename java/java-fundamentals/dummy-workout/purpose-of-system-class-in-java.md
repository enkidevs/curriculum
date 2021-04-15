---
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - system-class

notes: ''

links:

  - >-
    [docs.oracle.com](http://docs.oracle.com/javase/7/docs/api/java/lang/System.html){website}

---
# Purpose of `System` class in Java

---
## Content

The `System` class contains several useful class fields and methods. Standard input, output and error streams are the most known. It also provides access to externally defined properties and environment variables. 

System class in Java cannot be instantiated, all the functions provided are in static methods and variables.

`java.lang.System` contains the following fields:

- `static PrintStream err` (error stream) 
- `static InputStream in` (input stream)
- `static PrintStream out` (output stream)
 
