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
![test.svg](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%2C0%2C820%2C100%22%0A%20%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20xmlns%3Axlink%3D%22http%3A//www.w3.org/1999/xlink%22%3E%0A%0A%20%20%3Crect%20x%3D%225%22%20y%3D%2215%22%20fill%3D%22%23ffffff%22%20stroke%3D%22%23E2282E%22%20width%3D%22200%22%20height%3D%2260%22/%3E%0A%20%20%3Ctext%20x%3D%2225%22%20y%3D%2257%22%20stroke%3D%22%23E2282E%22%20fill%3D%22%23E2282E%22%20font-size%3D%2235px%22%20font-family%3D%22%27Roboto%27%2C%20sans-serif%22%3EJava%20Code%3C/text%3E%0A%0A%20%20%3Cline%20x1%3D%22205%22%20y1%3D%2245%22%20x2%3D%22315%22%20y2%3D%2245%22%20stroke-width%3D%222px%22%20stroke%3D%22%23E2282E%22/%3E%0A%20%20%3Ctext%20x%3D%22210%22%20y%3D%2240%22%20stroke%3D%22%23E2282E%22%20fill%3D%22%23E2282E%22%20font-size%3D%2223px%22%20font-family%3D%22%27Roboto%27%2C%20sans-serif%22%3E%0A%20%20%20%20Compiler%0A%20%20%3C/text%3E%0A%0A%20%20%3Crect%20x%3D%22310%22%20y%3D%2215%22%20fill%3D%22%23ffffff%22%20stroke%3D%22%23E2282E%22%20width%3D%22200%22%20height%3D%2260%22/%3E%0A%20%20%3Ctext%20x%3D%22340%22%20y%3D%2257%22%20stroke%3D%22%23E2282E%22%20fill%3D%22%23E2282E%22%20font-size%3D%2235px%22%20font-family%3D%22%27Roboto%27%2C%20sans-serif%22%3EBytecode%3C/text%3E%0A%0A%20%20%3Cline%20x1%3D%22510%22%20y1%3D%2245%22%20x2%3D%22620%22%20y2%3D%2245%22%20stroke-width%3D%222px%22%20stroke%3D%22%23E2282E%22/%3E%0A%20%20%3Ctext%20x%3D%22538%22%20y%3D%2240%22%20stroke%3D%22%23E2282E%22%20fill%3D%22%23E2282E%22%20font-size%3D%2223px%22%20font-family%3D%22%27Roboto%27%2C%20sans-serif%22%3E%0A%20%20%20%20JVM%0A%20%20%3C/text%3E%0A%0A%20%20%3Crect%20x%3D%22615%22%20y%3D%2215%22%20fill%3D%22%23ffffff%22%20stroke%3D%22%23E2282E%22%20width%3D%22200%22%20height%3D%2260%22/%3E%0A%20%20%3Ctext%20x%3D%22620%22%20y%3D%2257%22%20stroke%3D%22%23E2282E%22%20fill%3D%22%23E2282E%22%20font-size%3D%2230px%22%20font-family%3D%22%27Roboto%27%2C%20sans-serif%22%3EMachine%20Code%3C/text%3E%0A%0A%3C/svg%3E%0A)
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
