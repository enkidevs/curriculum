# Compiling and Running Java Code
author: mihaiberq

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

---
## Content

In the last insight, we talked about the `HelloWorld` class and about its output, but never mentioned how to get from one point to the other.

Before the *Java Virtual Machine* can do its part and run the code, a *compiler* is needed to get the *bytecode* understandable by the JVM.

In Java, a **compiler** takes the Java code written by the programmer and outputs the *Java classes bytecode* (which is platform neutral).

The bytecode then goes through the JVM which transforms it into low-level machine code. 

This process can be done by an *Integrated Development Environment* (IDE) automatically, or both the compilation and interpretation can be run manually. In both cases, a Java compiler and the JVM has to be installed on the computer.

You can get them by installing the *Java Development Kit* (JDK).

Let's take the `HelloWorld.java` class for example. To compile it into `HelloWorld.class` file, you have to open a terminal in the folder containing the initial `.java` file and run:
```
$ javac HelloWorld.java
```
Now, to run the `bytecode` (which is found inside the `.class` file), you have to call the JVM:
```
$ java HelloWorld
Hello World!
``` 
As you can see, after calling the JVM, the output of the program is printed to the console.

---
## Practice

A\an ??? translates the high-level Java code into bytecode.

*compiler
*virtual machine
*IDE
*terminal

---
## Revision

You can get both the Java compiler and the JVM by installing

???.
*Java Development Kit
*Java Virtual Machine
*Any virtual machine
*Java language