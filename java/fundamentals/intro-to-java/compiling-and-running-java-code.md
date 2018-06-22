---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false




---

# Compiling and Running Java Code

---
## Content

In the last insight, we talked about the `HelloWorld` class and its output but never mentioned how to get from one point to the other.

Before the *Java Virtual Machine* can do its part and run the code, a *compiler*[1] is needed to get the *bytecode* understandable by the JVM[2].

The **compiler** takes the Java code written by the programmer and outputs the *Java classes bytecode* (which is platform neutral).

The bytecode then goes through the JVM which transforms it into low-level machine code. Here's a graphical representation of the process:

![test.svg](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%2C0%2C820%2C100%22%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%3E%3Cpath%20fill%3D%22%23fff%22%20stroke%3D%22%23E2282E%22%20d%3D%22M5%2015h200v60H5z%22/%3E%3Ctext%20x%3D%2225%22%20y%3D%2257%22%20stroke%3D%22%23E2282E%22%20fill%3D%22%23E2282E%22%20font-size%3D%2235%22%20font-family%3D%22%27Roboto%27%2C%20sans-serif%22%3EJava%20Code%3C/text%3E%3Cpath%20stroke-width%3D%222%22%20stroke%3D%22%23E2282E%22%20d%3D%22M205%2045h110%22/%3E%3Ctext%20x%3D%22210%22%20y%3D%2240%22%20stroke%3D%22%23E2282E%22%20fill%3D%22%23E2282E%22%20font-size%3D%2223%22%20font-family%3D%22%27Roboto%27%2C%20sans-serif%22%3ECompiler%3C/text%3E%3Cpath%20fill%3D%22%23fff%22%20stroke%3D%22%23E2282E%22%20d%3D%22M310%2015h200v60H310z%22/%3E%3Ctext%20x%3D%22340%22%20y%3D%2257%22%20stroke%3D%22%23E2282E%22%20fill%3D%22%23E2282E%22%20font-size%3D%2235%22%20font-family%3D%22%27Roboto%27%2C%20sans-serif%22%3EBytecode%3C/text%3E%3Cpath%20stroke-width%3D%222%22%20stroke%3D%22%23E2282E%22%20d%3D%22M510%2045h110%22/%3E%3Ctext%20x%3D%22538%22%20y%3D%2240%22%20stroke%3D%22%23E2282E%22%20fill%3D%22%23E2282E%22%20font-size%3D%2223%22%20font-family%3D%22%27Roboto%27%2C%20sans-serif%22%3EJVM%3C/text%3E%3Cpath%20fill%3D%22%23fff%22%20stroke%3D%22%23E2282E%22%20d%3D%22M615%2015h200v60H615z%22/%3E%3Ctext%20x%3D%22620%22%20y%3D%2257%22%20stroke%3D%22%23E2282E%22%20fill%3D%22%23E2282E%22%20font-size%3D%2230%22%20font-family%3D%22%27Roboto%27%2C%20sans-serif%22%3EMachine%20Code%3C/text%3E%3C/svg%3E)

This process is done by an *Integrated Development Environment* (IDE) automatically, or both the compilation and interpretation can be run manually. In both cases, a Java compiler and the JVM have to be installed on the computer.

You can get them by installing the *Java Development Kit* (JDK).

Let's take the `HelloWorld.java` class for example. To compile it into `HelloWorld.class` file, you have to open a terminal in the folder containing the initial `.java` file and run:
```
$ java HelloWorld.java
```
Now, to run the `bytecode` (which is found inside the `.class` file), you have to call the JVM:
```
$ java HelloWorld
Hello World!
```
As you can see, after calling the JVM, the output of the program is printed to the console.

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
 
