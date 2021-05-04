---
author: mihaiberq
type: normal
category: must-know
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/javaOO/accesscontrol.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Java Modifiers


---

## Content

**Modifiers** are keywords used during declaration that can change the variable/method/class behaviour.

In the previous insights, there were some words used that were not explained, such as:

```java
public class ...{
//or
  public void start();
}
```

In Java, there are two main types of modifiers:

- Access modifiers
- Non-Access modifiers

### Access modifiers

Depending on the modifier, the variable, method or class is visible to:

- the package (no modifier)
- the class only (`private`)
- every class (`public`)
- the package and the subclasses (`protected`)

### Non-access modifiers

These modifiers describe other functionalities:

- `static`: makes the declaration more general than instance specific
- `final`: doesn't allow the variable, method, or class reference to change
- `abstract`: makes JVM wait for subclasses to implement the methods/classes

We will talk about each of them in detail in a future workout.


---

## Practice

Which of the following modifiers makes a variable visible only to its enclosing class?

???

- private
- public
- protected
- static


---

## Revision

Which of the following modifiers makes a variable class specific, not instance specific?

???

- static
- private
- public
- final
