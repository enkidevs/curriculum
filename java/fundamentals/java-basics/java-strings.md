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

# Java `Strings`

---
## Content

What's odd about Java is that *character sequences*, or *strings*, are not *primitives*. However, because they are often used, `String`s have priority over other classes.

In other words, a `String` is not a primitive, but an `Object`, and one of the simplest. A `String` is initialized as such:
```java
String sequence = "This is a string";
```
Notice how the **S** in `String` has to be capitalized, while primitives have a lower-case first letter.

Double quotes are also worth mentioning when talking about `String`s. They are used to differentiate a literal sequence of characters from real variables. Consider this example:
```java
String hello = "hi";
System.out.println(hello);
System.out.println("hello");
```
Whose output will be:
```shell
hi
hello
```

In the `HelloWorld` example, the value printed to the console was a `String`:
```java
System.out.println("Hello World!");
```
You can also concatenate (or add) `String`s. The easiest way to do this is:
```java
String concat = "Concatenated" + " string"
                               + "!";
```
If we print `concat`, we obtain:
```java
System.out.println(concat);
// Concatenated string!
```

---
## Revision

To concatenate two strings, operator ??? is used.


* `+`
* `++`
* `-`
* `,`
