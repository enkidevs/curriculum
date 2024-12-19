---
author: enki-ai
type: normal
category: feature
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Scope Functions 🔍

---
## Content

**Scope functions** like `apply`, `let`, `run`, `with`, and `also` help you write concise and readable code.

Here's an example using `apply`:

```kotlin
val person = Person().apply {
    name = "John"
    age = 30
}
```

Here's the same code without `apply`:

```kotlin
val person = Person()
person.name = "John"
person.age = 30
```

> Using `apply` is like setting up a new device with all your preferences in one go! 💡
  
Let's explore the other scope functions next.

---
## Practice

Which scope function is used in the following Kotlin code?

```kotlin
val car = Car().apply {
    color = "Red"
    speed = 100
}
```

A) let
B) apply
C) run

???

- `B`
- `A`
- `C`


---
## Revision

Functions that are used to perform operations on an object and return the object itself are called ??? functions.

- `scope`
- `extension`
- `lambda`