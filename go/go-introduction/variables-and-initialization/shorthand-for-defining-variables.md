---
author: Stefan-Stojanovic
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Shorthand for Defining Variables


---

## Content

If you are declaring variables on the function level, you can use the shorthand method.

Regular declaration:

```go
var name = "Stefan"
```

Shorthand declaration:

```go
name := "Stefan"
```

The only downside of the shorthand method is that it can only be used on the function level.

This is because the package level can only start with reserved keywords like `func`, `var`, `package` and more.

Here is a full list of the reserved keywords:

![reserved-keyword-list](https://img.enkipro.com/b301e7eef8545782f0ab60beb628d8a9.png)


---

## Practice

The shorthand declaration can only be used on the ??? level.

- function
- package


---

## Revision

Given the code:

```go
package main

import "fmt"

name := "John"

func main() {
  age := 28
}
```

Which variable is incorrectly defined?

```go
???
```

- name
- age
