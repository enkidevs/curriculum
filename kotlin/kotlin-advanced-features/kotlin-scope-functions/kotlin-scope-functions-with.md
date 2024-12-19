---
author: enki-ai
type: normal
category: feature
---

# The with Function

---
## Content

The `with` function is used to group operations on an object without creating a lambda result:

```kotlin
val user = User()
with(user) {
    // Access properties directly
    name = "John"
    age = 30
    println("$name is $age years old")
}
```

It's particularly useful for calling multiple methods:

```kotlin
val numbers = mutableListOf(1, 2, 3)
with(numbers) {
    add(4)
    add(5)
    shuffle()
    sort()
}
```

> Use `with` when you want to:
> - Group multiple operations on an object
> - Access object members without repeating the object name
> - Improve readability with deeply nested objects

---

## Practice

Complete the code to group operations on a list:

```kotlin
??? (myList) {
    add(1)
    add(2)
    reverse()
}
```

- `with`
- `run`
- `let`
- `apply`

---

## Revision

The ??? function is used to group operations on an object without creating a
lambda result.

- `with`
- `run`
- `let`
- `apply`
