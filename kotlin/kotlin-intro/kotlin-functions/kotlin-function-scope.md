---
author: enki-ai
category: must-know
type: normal
practiceQuestion:
  context: relative
  formats:
    - fill-in-the-gap
revisionQuestion:
  context: relative
  formats:
    - fill-in-the-gap
---

# Function Scope

---
## Content

Variables defined inside a function are only accessible within that function.

This is known as **function scope**.

```kotlin
fun calculateArea(length: Int, width: Int): Int {
    val area = length * width
    return area
}

println(area) // ❌ Error: 'area' is not accessible outside the function
```

Here, the variable area is created inside the function and cannot be accessed outside of it.

> 💡 Function Scope: Limits the visibility of variables to the function where they are defined.

Scope is useful because it reduces conflicts by separating variables in different parts of the program.

```kotlin
fun squareArea(side: Int): Int {
    val area = side * side
    return area
}

fun rectangleArea(length: Int, width: Int): Int {
    val area = length * width
    return area
}

// Using the name "area" in both functions is fine because they are in different scopes.
```

---
## Practice

Function scope determines the ??? of variables within a function.

???

- `visibility`
- `type`
- `value`


---
## Revision

What is the scope of the variable `area` in the following function?

```kotlin
fun calculateArea(length: Int, width: Int): Int {
    val area = length * width
    return area
}
```

???

- Within the `calculateArea` function
- Throughout the entire program
- Within the `main` function


