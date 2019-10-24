---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

aspects:

  - introduction
  - workout

inAlgoPool: false

links:

  - '[docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/javaOO/methods.html){website}'

---

# Functions

---
## Content

We return to the `HelloWorld` example for this part:
```java
public class HelloWorld {
   public static void main() {
      System.out.println("Hello World!");
   }
}
```
In Java, every function has to be inside a class. In this case, our class is `HelloWorld`, and the function is `main()`. We call these functions *methods*.

The syntax of the example function is:
 - `public static`: modifier
 - `void`: return type
 - `main`: identifier(name) of the method

The next snippet shows the general declaration of a method:
```java
modifier returnType name(parameters){
   // method body
}
```

We will discuss **modifiers** in a future insight. For now, we will focus on what **type** means.

### Void Functions

A `void` function is a method that doesn't return anything. In our case, it prints something to the console, but its `return` statement is `void`.

Another example of a function that takes a name as a parameter and prints it to the console:
```java
public class Example {
  public static void heyName(String name) {
    System.out.println("Hey, " +
             name + "!");
  }

  /* this is how we call the method */
  public static void main() {
    heyName("Sam");
  }
}
// Output: Hey, Sam!
```
### Non-void Functions

Instead of `void`, we could use a concrete type to denote that our function will return a specific result. For example, we could use an `int` to denote returning the result of integer multiplication or a `String` to denote returning the result of string concatenation. In general, we’re allowed to return any type available in Java (primitive or non-primitive).
```java
public class NonVoidExample {

  public static int sum(
                int a, int b) {
    int c = a+b;
    return c;
  }

  public static String concat(
                String d,String e) {
    String f = d + e;    
    return f;
  }

  public static void main() {
    System.out.println(sum(2,3));
    System.out.println(concat("John ",
                        "Doe"));
  }
}
// 5
// John Doe
```
In this case, we designate the methods to do the job for us, which helps with keeping the `main` method simple. If somehow there's an error, this way of breaking the code into smaller snippets will help with debugging.

---
## Revision

Complete the snippet with the function's correct type:
```java
public ??? test() {
  System.out.println("test");
}
```

* `void`
* `String`
* `int`
* `empty`
* `static`
