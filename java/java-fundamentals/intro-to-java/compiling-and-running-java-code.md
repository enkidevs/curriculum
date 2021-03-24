---
author: mihaiberq
type: normal
category: must-know
links:
  - '[JDK](https://openjdk.java.net/install/){documentation}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Compiling and Running Java Code


---

## Content

Now that you've seen some Java code, you might be wondering how you can get that to run on your machine.

Before the *Java Virtual Machine* can do its part and run the code, a *compiler*[1] is needed to get the *bytecode* understandable by the JVM[2].

This process is done by an *Integrated Development Environment* (IDE) automatically. If you're not using an IDE, both the compilation and interpretation can be run manually. 

In both cases, a Java compiler and the JVM have to be installed on the computer. You can get them by installing the *Java Development Kit* (JDK).

> 💡 If you don't know how to install the JDK, check the Learn More section for instructions.

Let's take a look at the previous `HelloJava.java` example[3]. To run it, you'll need to follow these two steps:

1. Compile it to bytecode:

```bash
javac HelloWorld.java
```

> 💡 Think of `javac` as **java compile**.

2. Run the resulting bytecode

```bash
java HelloWorld
Hello World!
```

> 💡 As with all the skills in the app, if you want to access more advanced or specific content at any time, **feel free to use the *Skill Map* tab** to jump to the workouts most relevant for you.

> 💬 Why are you interested in learning Java?
>
> Leave a comment or view some of the other comments for inspiration before moving on.


---

## Practice

A ??? translates the Java code written by the programmer into bytecode.

- compiler
- virtual machine
- IDE
- terminal


---

## Revision

You can get both the Java compiler and the JVM by installing

???.

- Java Development Kit
- Java Virtual Machine
- Any virtual machine
- Java language


---

## Footnotes

[1:Compiler]
In general, a compiler is a tool that translates the code you write (which is human-understandable enough, but has no use for the computer) into code that the computer understands, but has no use for you. In particular, the Java compiler does only half of the job - the output bytecode cannot be executed by the machine without getting it through another tool (which is the JVM).

Fun fact: there are multiple Java compilers, written in either *C*, *C++* or even *Java*.

[2:JVM]
Unlike Java code, a JVM has to be platform specific as it provides a link between the compiled Java code and the operating system.

[3:Previous Example]
Here's how the previous example looked like:

```java
// HelloJava.java
public class HelloJava {
  public static void main(String[] args) {
    System.out.println("Hello Java!");
  }
}
// Hello Java!
```
