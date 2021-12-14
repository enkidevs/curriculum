---
author: alex
type: normal
category: feature
tags:
  - fact
links:
  - >-
    [www.oracle.com](http://www.oracle.com/webfolder/technetwork/tutorials/obe/java/Lambda-QuickStart/index.html){website}
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

# Java 8 Lambda expressions


---

## Content

The latest Java release included quite a few changes that pushed the language to be more functional-friendly.

Lambda expressions are one of the most significant additions that enable you to treat functionality as a method argument, or code as data. Lambda expressions let you express instances of single-method interfaces more compactly.

Example of a lambda:

```java
public class Main {
  public static void main(String[] args) {
    // Anonymous Runnable
    Runnable r1 = new Runnable() {
      public void run() {
        System.out.println("test1");
      }
    };
    // Lambda Runnable
    Runnable r2 = () -> System.out.println("test2");
    r1.run(); // test1
    r2.run(); // test2
  }
}
```

A lambda expression consists of the following:

- A comma-separated list of formal parameters enclosed in parentheses.
- The arrow token ->
- A body, which consists of a single expression or a statement block.


---

## Practice

Create a runnable with the help of lambda expressions:

```java
Runnable myRunnable = ??? ??? 
   System.out.println(“my runnable”);
```

- `()` 
- `->` 
- `<-` 
- `=>` 
- `{}`


---

## Revision

What token is specific to Lambda expressions?

???

- `->` 
- `<-` 
- `()` 
- `=>`
