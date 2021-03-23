---
author: mihaiberq
type: normal
category: must-know
links:
  - >-
    [Get started with
    Java](https://docs.oracle.com/javase/tutorial/getStarted/cupojava/index.html){website}
  - '[Playground](https://repl.it/@enkicontent/HelloJavaPlayground){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Hello Java!


---

## Content

Now that you know a little bit about Java, it's time to show you how to build your first app. 

There are a couple of choices when it comes to where to write Java code: simple text editors (Atom, Sublime, Emacs, Vim) or IDEs[1] (IntelliJ, Eclipse). You can download all of them for free.

Probably the most used first code snippet for any language is the `hello world` one. Here it is:

```java
// HelloJava.java
public class HelloJava {
  public static void main(String[] args) {
    System.out.println("Hello Java!");
  }
}
// Hello Java!
```

Wow, that's a lot! All this does is display `"Hello Java!"`.

As it is hard to represent the whole environment on a phone, we will assume that text after `//` is the displayed output after executing the program, unless stated otherwise.

> We've included a playground in the **Learn More** section. Go wild, run the code, replace things and see what happens!


---

## Practice

How would you display "I'm learning Java!"?

```java
public class Main {
  public static void main()String[] args) {
    System.out.???("I'm learning Java!");
  }
}
```

- println
- displayln
- showln


---

## Revision

What's the name of the mandatory main **Java** function for a program to run?

???

- `main`
- `start`
- `run`
- `debug`
- `prod`


---

## Footnotes

[1:IDE]
IDEs, or Integrated Development Environments, are applications much like text editors but with extra available features: as they are specific to a certain language, they come with autocomplete functionalities, syntax checker, class definitions and specifications (IntelliJ excels at this), and debugging, building and compiling tools.

As you build up your knowledge, you might want to use an IDE for coding, especially because of the integrated definitions and specifications.
