---
author: nickdaminov
type: normal
category: must-know
links:
  - >-
    [More About
    serialVersionUID](https://stackoverflow.com/questions/285793/what-is-a-serialversionuid-and-why-should-i-use-it){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# serialVersionUID


---

## Content

The key component of a receiving and deserializing process is **serialVersionUID**. **serialVersionUID** is a class version number that is used during deserialization to verify that the sender and receiver have the same class structure for the serialized object.

The **serialVersionUID** is created automatically when an object is serialized depending on various aspects of the class. Despite this, **serialVersionUID** can and is recommended to be declared manually as the automatic declaration is highly sensitive to the class contents and depends on the compiler implementation.

In order to specify a custom **serialVersionUID**, we should create a field *serialVersionUID* that must be static, final, of type long, and of any access type[1]. For example:

```plain-text
ANY-ACCESS-MODIFIER static final
     long serialVersionUID = 42L;
```


---

## Practice

What is serialVersionUID?

???

What is the best practice for serialVersionUID declaration?

???

- A specific number that is used upon deserializing an object
- Custom declaration
- Automatic declaration
- A random number
- It represents the number of static variables and methods in a serialized class


---

## Revision

What is serialVersionUID?

???

What is the best practice for serialVersionUID declaration?

???

serialVersionUID should be `static` and `final` but what about the other components?
What is the access type of serialVersionUID?

???

What is the data type of serialVersionUID?

???

- A specific number that is used upon deserializing an object
- Custom declaration
- Any access type
- long
- Automatic declaration
- int
- float
- A random number
- It represents the number of static variables and methods in a serialized class


---

## Footnotes

[1:ANY-ACCESS-MODIFIER]
In this, it makes no difference if we make it `private`, `public`, `protected` or any other type.
