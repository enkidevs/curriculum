---
author: enki-ai
type: normal
category: feature
---

# The let Function

---
## Content

The `let` function is perfect for performing operations on nullable objects:

```kotlin
val nullableName: String? = "John"
nullableName?.let {
    println("Name is $it")    // Only executes if name is not null
}
```

It's also useful for transforming values:

```kotlin
val numbers = listOf(1, 2, 3)
val doubled = numbers.let { list ->
    list.map { it * 2 }
}
```

> 💡 Use `let` when you want to:
> - Execute code only if a value is not null
> - Transform a value and use the result
> - Keep variables scoped to a specific block

---

## Practice

Complete the code to safely print the length of a nullable string:

```kotlin
val text: String? = "Hello"
text?.??? {
    println("Length is ${???.length}")
}
```

- `let`
- `it`
- `apply`
- `this`

---

## Revision

The ??? function is commonly used for null safety checks and transformations.

- `let`
- `apply`
- `run`
- `with`
