---
author: adamMontgomerie
type: normal
category: must-know
tags:
  - naming-conventions
links:
  - >-
    [javarevisited.blogspot.co.uk](http://javarevisited.blogspot.co.uk/2014/10/10-java-best-practices-to-name-variables-methods-classes-packages.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Use meaningful names


---

## Content

When naming classes, methods, variables or just about anything that you are required to give a name to, it is best to choose names which have a relevant meaning.

This is to improve the readability of your code; a name which briefly explains the purpose or use of something will make it much easier for other programmers, or even the original programmer at a later date, to understand the code.

For example, this is not clear:

```java
public String ga(String n) {
...
```

However, this makes it obvious that this is a method which takes a name parameter and returns an address as a `String`.

```java
public String getAddress(String name) {
...
```


---

## Revision

What’s the main advantage of using meaningful names for methods?

???

- Improves your code's readability.
- Bigger names are always better.
- Improves code compilation times.
- Improves running times.
