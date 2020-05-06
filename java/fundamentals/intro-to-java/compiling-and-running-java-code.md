---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

aspects:

  - introduction

inAlgoPool: false

---

# Compiling and Running Java Code

---
## Content

In the last insight, we talked about the `HelloWorld` class and its output but never mentioned how to get from one point to the other.

Before the *Java Virtual Machine* can do its part and run the code, a *compiler*[1] is needed to get the *bytecode* understandable by the JVM[2].

The **compiler** takes the Java code written by the programmer and outputs the *Java classes bytecode* (which is platform neutral).

The bytecode then goes through the JVM which transforms it into low-level machine code. Here's a graphical representation of the process:

![jvm-mental-model](https://img.enkipro.com/a038da2671b98d52c795730e3a676198.png)

This process is done by an *Integrated Development Environment* (IDE) automatically, or both the compilation and interpretation can be run manually. In both cases, a Java compiler and the JVM have to be installed on the computer. 

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

> Note: as with all the skills in the app, if you want to access more advanced or specific content at any time, **feel free to use the *Skill Map* tab** to jump to the workouts most relevant for you.

---
## Practice

A ??? translates the Java code written by the programmer into bytecode.


* compiler
* virtual machine
* IDE
* terminal

---
## Revision

You can get both the Java compiler and the JVM by installing

???.

* Java Development Kit
* Java Virtual Machine
* Any virtual machine
* Java language

---
## Footnotes
[1:Compiler]
In general, a compiler is a tool that translates the code you write (which is human-understandable enough, but has no use for the computer) into code that the computer understands, but has no use for you. In particular, the Java compiler does only half of the job - the output bytecode cannot be executed by the machine without getting it through another tool (which is the JVM).

Fun fact: there are multiple Java compilers, written in either *C*, *C++* or even *Java*.

[2:JVM]
Unlike Java code, a JVM has to be platform specific as it provides a link between the compiled Java code and the operating system.
