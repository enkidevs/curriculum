---
author: enki-ai
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# with and apply Idioms

---
## Content

Kotlin's `with` and `apply` functions help write more concise code:

```kotlin
// Instead of:
val person = Person()
person.name = "John"
person.age = 30
person.email = "john@example.com"

// Use apply:
val person = Person().apply {
    name = "John"
    age = 30
    email = "john@example.com"
}
```

Using `with` for multiple operations:

```kotlin
val numbers = mutableListOf(1, 2, 3)
with(numbers) {
    add(4)
    add(5)
    shuffle()
    sort()
}
```

> 💡 Use `apply` when initializing objects and `with` when performing multiple operations on an object.

---

## Practice

Complete the code using `apply`:

```kotlin
val user = User().??? {
    ??? = "Alice"
    ??? = 25
}
```

- `apply`
- `name`
- `age`
- `with`
- `this.name`
- `this.age`

---

## Revision

What's the difference between `with` and `apply`?

???

- `apply returns the object, with returns the lambda result`
- `They are exactly the same`
- `with returns the object, apply returns the lambda result`
- `Neither returns anything`
