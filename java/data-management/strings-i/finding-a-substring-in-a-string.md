---
author: adamMontgomerie
type: normal
category: tip
tags:
  - strings
links:
  - >-
    [Manipulating Characters in a String](https://docs.oracle.com/javase/tutorial/java/data/manipstrings.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Finding a substring in a string


---

## Content

In order to confirm if a string contains a specific substring, we can simply use the `contains` method in the `String` class.

The `contains` method takes a `CharSequence` as an input. `CharSequence` is an interface which is implemented by `String`, so it will also accept strings as inputs.

```java
String s = "Hello, this is dog.";
bool dog = s.contains("dog");
//dog: true
```

If simply confirming that a substring is present is not enough, and we also need to find *where* it is in the string, we can use the `indexOf` or `lastIndexOf` methods:

```java
String s = "This dog is my dog";
int indexFirst = s.indexOf("dog");
//indexFirst: 5
int indexLast = s.lastIndexOf("dog");
//indexLast: 15
```

---

## Revision

What would be the result of the following code?

```java
String s = "Check out this cat, my cat, the best cat really";
int index = s.indexOf("cat");
//index: ???
```

- 15
- 24
- 30
- 0
