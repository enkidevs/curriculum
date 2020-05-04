---
author: catalin

type: normal

category: must-know

aspects:
  - introduction

notes: 'https://insights.enki.com/#/contrib/others/55c83ba83f06ab320051aa8a?search=kha'

---

# How Range Operations Work

---
## Content

Strings can be thought of as a list of characters. Hence, a substring is essentially a range in the original string. 
You can use the `substring()` method to extract a part of a string. The result will be returned **as a new value** while the original string isn't mutated. 

The syntax is:

```java
String.substring(
  int startIndex,
  int endIndex
);
```
Let's take a look at an example:

```java
"Enki".substring(0, 2);
```

The result will be `"En"`. This is because the method starts at the value of `startIndex`, includes everything in-between, but the value of `endIndex` **is excluded**.

There are many more methods that need specifying a range, and all of them use this rule.

```java
List.sublist(
  int startIndex,
  int endIndex
);
```

```java
Array.copyOfRange(
  T[],
  int startIndex,
  int endIndex
);
```

---
## Practice

What would be the return value of the following method:
```java
"beautiful".substring(4, 6);
// ???
```

* `ti` 
* `ut` 
* `if` 
* `be` 
* `ul`

---
## Revision

When calling the following function:
```java
"test".substring(1,3)
```
The output will ??? the character with index 3.

* `exclude` 
* `include`
