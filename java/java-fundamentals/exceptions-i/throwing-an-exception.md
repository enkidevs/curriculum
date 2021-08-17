---
author: catalin
type: normal
category: must-know
links:
  - >-
    [How to Handle Exceptions Better](http://crunchify.com/better-understanding-on-checked-vs-unchecked-exceptions-how-to-handle-exception-better-way-in-java/){website}
notes: |
  https://insights.enki.com/#/contrib/55a3b45d2a4a89320042e651
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Throwing an `exception`

---

## Content

An *exception* is an event that occurs during the execution of a program disrupting the normal flow of the program.
There are two types of `exception`:

- *Checked* : exceptions checked at compile stage.
- *Unchecked*: exceptions that occur during runtime due to faulty logic. They are direct sub-classes of the `RuntimeException` class.

Exceptions have to be handled and they can also be thrown. You can handle an exception inside a `try/catch` block :  

```java
try {
  // perform an action
} catch (IOException e) {
  // consume the exception
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

An exception should be thrown when a fundamental assumption of the current code block is found to be false. 

For example, a methods that counts the number of elements from a `List` should `throw` an exception if the given parameter is not a `List`.

---

## Revision

The two types of exceptions are ???.

- checked & unchecked
- compiled & runtime
- runtime & checked
- compiled & unchecked
