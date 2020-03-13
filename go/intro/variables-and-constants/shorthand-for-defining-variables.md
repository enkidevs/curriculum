---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

aspects:
  - introduction
  - new

type: normal

category: must-know

links:

---

# Shorthand for defining variables

---
## Content


Now that we know how to define and initialize a variable both on the package and function level, there is a shorthand method for declaring variables that only works on the function level.

Regular declaration:
```go
var name ="Stefan"
```

Shorthand declaration:
```go
name := "Stefan"
```

As you can see above, the shorthand method is much shorter, however it only works on the function level.

This is because the package level can only start with reserved keywords like `func`, `var`, `package` and more.

Full list of reserved keywords:

[reserved-keyword-list](https://img.enkipro.com/b301e7eef8545782f0ab60beb628d8a9.png)

---

## Practice

The shorthand declaration can only be used on the ??? level.

* function
* package