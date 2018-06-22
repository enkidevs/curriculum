---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false


links:

  - '[Get started with Java](https://docs.oracle.com/javase/tutorial/getStarted/cupojava/index.html){website}'


---

# `Hello World!`

---
## Content

Now that you know a little bit about Java, it is time to show you how to build your first app. 

There are a couple of choices when it comes to where to write Java code: simple text editors (Atom, Sublime, Emacs, Vim) or IDEs[1] (IntelliJ, Eclipse). You can download all of them for free.

Probably the most used first code snippet for any language is the `hello world` one. Here it is:
```java
public class HelloWorld{
  public static void main(String[] args){
    System.out.println("Hello World!");
  }
}
// Hello World!
```

All the code does is print `Hello World!` to the console. As it is hard to represent the whole environment on a phone, we will assume that text after `//` is the console output, unless stated otherwise.

For any Java code to work, a `class` has to enclose it. In our case, the class is called `HelloWorld`. **Keep in mind** that Java requires the file containing the class `HelloWorld` *to be called* `HelloWorld.java`.

Next, a `main` function is required to run the code. The name of this function is more or less a convention from the days of `C`. In this function, we invoke the built-in class `System` (one of the 4300 classes that exists in Java 8) and call its internal function `println()` with the text we want to print. In our case, `Hello world!`.

The code must then be *compiled into bytecode* and passed to the *Java Virtual Machine* (JVM), which will take care of printing the message.

*Don't worry* if you didn't understand all of this, as we will discuss each term in more detail in **future workouts**.

---
## Practice

What built-in **Java** class provides the `println()` method that prints text to the console?

```java
???.out.println("hey there");
```


* `System`
* `Console`
* `Main`
* `HelloWorld`
* `Printer`

---
## Revision

What's the name of the mandatory main **Java** function for a program to run?

???


* `main`
* `start`
* `run`
* `debug`
* `prod`

---
## Footnotes
[1:IDE]
IDEs, or Integrated Development Environments, are applications much like text editors but with extra available features: as they are specific to a certain language, they come with autocomplete functionalities, syntax checker, class definitions and specifications (IntelliJ excels at this), and debugging, building and compiling tools.

As you build up your knowledge, you might want to use an IDE for coding, especially because of the integrated definitions and specifications.
 
