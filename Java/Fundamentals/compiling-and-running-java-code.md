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

The bytecode then goes through the JVM which transforms it into low-level machine code. Here's a graphical representation of the process:

![alt description](%253Csvg%2520height%253D%2522auto%2522%2520viewBox%253D%25220%252C0%252C820%252C300%2522%2520xmlns%253D%2522http%253A%252F%252Fwww.w3.org%252F2000%252Fsvg%2522%253E%253Cdefs%253E%253Cmarker%2520id%253D%2522a%2522%2520markerWidth%253D%25228%2522%2520markerHeight%253D%25228%2522%2520refY%253D%25223%2522%2520orient%253D%2522auto%2522%253E%253Cpath%2520d%253D%2522M0%25200v6l9-3z%2522%2520fill%253D%2522%2523E2282E%2522%252F%253E%253C%252Fmarker%253E%253C%252Fdefs%253E%253Cpath%2520fill%253D%2522%2523fff%2522%2520stroke%253D%2522%2523E2282E%2522%2520d%253D%2522M5%252015h200v60H5z%2522%252F%253E%253Ctext%2520x%253D%252225%2522%2520y%253D%252257%2522%2520stroke%253D%2522%2523E2282E%2522%2520fill%253D%2522%2523E2282E%2522%2520font-size%253D%252235%2522%2520font-family%253D%2522'Roboto'%252C%2520sans-serif%2522%253EJava%2520Code%253C%252Ftext%253E%253Cpath%2520stroke-width%253D%25222%2522%2520stroke%253D%2522%2523E2282E%2522%2520marker-end%253D%2522url(%2523a)%2522%2520d%253D%2522M205%252045h90%2522%252F%253E%253Ctext%2520x%253D%2522215%2522%2520y%253D%252240%2522%2520stroke%253D%2522%2523E2282E%2522%2520fill%253D%2522%2523E2282E%2522%2520font-size%253D%252218%2522%2520font-family%253D%2522'Roboto'%252C%2520sans-serif%2522%253ECompiler%253C%252Ftext%253E%253Cpath%2520fill%253D%2522%2523fff%2522%2520stroke%253D%2522%2523E2282E%2522%2520d%253D%2522M310%252015h200v60H310z%2522%252F%253E%253Ctext%2520x%253D%2522340%2522%2520y%253D%252257%2522%2520stroke%253D%2522%2523E2282E%2522%2520fill%253D%2522%2523E2282E%2522%2520font-size%253D%252235%2522%2520font-family%253D%2522'Roboto'%252C%2520sans-serif%2522%253EBytecode%253C%252Ftext%253E%253Cpath%2520stroke-width%253D%25222%2522%2520stroke%253D%2522%2523E2282E%2522%2520marker-end%253D%2522url(%2523a)%2522%2520d%253D%2522M510%252045h90%2522%252F%253E%253Ctext%2520x%253D%2522540%2522%2520y%253D%252240%2522%2520stroke%253D%2522%2523E2282E%2522%2520fill%253D%2522%2523E2282E%2522%2520font-size%253D%252218%2522%2520font-family%253D%2522'Roboto'%252C%2520sans-serif%2522%253EJVM%253C%252Ftext%253E%253Cpath%2520fill%253D%2522%2523fff%2522%2520stroke%253D%2522%2523E2282E%2522%2520d%253D%2522M615%252015h200v60H615z%2522%252F%253E%253Ctext%2520x%253D%2522620%2522%2520y%253D%252257%2522%2520stroke%253D%2522%2523E2282E%2522%2520fill%253D%2522%2523E2282E%2522%2520font-size%253D%252230%2522%2520font-family%253D%2522'Roboto'%252C%2520sans-serif%2522%253EMachine%2520Code%253C%252Ftext%253E%253C%252Fsvg%253E)

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
