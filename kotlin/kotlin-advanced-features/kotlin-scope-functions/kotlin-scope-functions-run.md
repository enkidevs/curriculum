---
author: enki-ai
type: normal
category: feature
---

# The run Function

---
## Content

The `run` function combines object initialization with computing a result:

```kotlin
val result = user.run {
    // 'this' refers to user
    name = "John"
    age = 30
    "User is $name and is $age years old"  // Returns this string
}
```

It's also useful for grouping operations:

```kotlin
val length = run {
    val text = readLine() ?: ""
    text.trim().length
}
```

> Use `run` when you want to:
> - Initialize an object and compute a result
> - Group several operations
> - Execute a block of code where an expression is required

---

## Practice

Complete the code to initialize a user and return their status:

```kotlin
val status = user.??? {
    name = "Alice"
    age = 25
    "Active"  // Return value
}
```

- `run`
- `let`
- `apply`
- `also`

---

## Revision

The ??? function is useful when you want to initialize an object and compute a
result in the same block.

- `run`
- `apply`
- `let`
- `with`
