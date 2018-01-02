# Uses of the `final` keyword
author: adamMontgomerie

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

tags:

  - keywords

  - oop-concepts

links:

  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=23){website}

---
## Content

The `final` keyword has different meanings depending on where it is used:
- If used on a class then it means that the class cannot be extended.
- If used on a method then it means that the method cannot be overriden.
- If used on a local variable, field or parameter then it means that the value cannot be changed after it has been set.

The advantages of using `final` are that:
- The programmer's intent is clearly communicated.
- The values of variables and fields cannot be accidentally changed.
- Allows the compiler and virtual machine to optimize your code.

---
## Practice

Which of the following is not an advantage of using the `final` keyword:

???

* It allows classes, where final has been used, to be extended to prevent code repetition.
* The values of final variables cannot be accidentally changed.
* The compiler and VM can optimize the code.

---
## Revision

Complete the following code snippet to forbid other classes to extend the `Example` class:
```
public ??? ??? Example{
// Revision questions
}
```
* `final`
* `class`
* `static`
* `void`
* `String`

---
## Quiz

headline: Can you predict the output of this inheritance example?

question: |
  // What would the following snippet output?
  ```
  class Tesla {
      public static final String MODEL = "Model S";
  }

  public class Roadster extends Tesla {
      public static final String MODEL = "Roadster";

      public static void main(String[] args) {
          System.out.println(Roadster.MODEL);
      }
  }
  ```

answers:
  - Roadster
  - Model S
  - 'error: MODEL is final'
  - Model SRoadster
