---
author: catalin
type: normal
category: must-know
links:
  - >-
    [crunchify.com](http://crunchify.com/better-understanding-on-checked-vs-unchecked-exceptions-how-to-handle-exception-better-way-in-java/){website}
notes: |
  https://insights.enki.com/#/contrib/55a3b45d2a4a89320042e651
---

# Throwing an `exception`


---

## Content

An `exception` is an event, which occurs during the execution of a program, that disrupts the normal flow of the program's instructions.
There are two types of `exception`:

- *Checked* : `exception`s checked at Compile stage.
- *Unchecked*: `exception`s that occur during runtime due to faulty logic. They are direct sub-classes of the `RuntimeException` class.

`Exception`s have to be handled and they can also be thrown. You can handle an `exception` inside a `try/catch` block :  

```java
try {
  //perform an action
} catch (IOException e) {
  //consume the exception
}
```

To throw an exception:

```java
throw new Exception();
```

Methods can also throw an `exception`:

```java
public void myMethod() throws IOException {
}
```

An `exception` should be thrown when a fundamental assumption of the current code block is found to be false. 

For example, a methods that counts the number of elements from a `List` should `throw` an `exception` if the given parameter is not a `List`.
