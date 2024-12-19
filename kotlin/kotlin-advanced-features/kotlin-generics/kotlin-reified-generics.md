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

# Reified Type Parameters

---
## Content

Reified type parameters allow you to access the actual type information at runtime in inline functions:

```kotlin
// Without reified - type information is erased
fun <T> isType(value: Any): Boolean {
    // Can't use: value is T
    return value::class == T::class  // Won't compile
}

// With reified - type information is preserved
inline fun <reified T> isType(value: Any): Boolean {
    return value is T  // Works!
}

// Usage
val number = 42
println(isType<Int>(number))    // true
println(isType<String>(number)) // false
```

Practical example with type checking:
```kotlin
inline fun <reified T> filterByType(items: List<Any>): List<T> {
    return items.filter { it is T }.map { it as T }
}

// Usage
val mixed = listOf(1, "text", 2, "more", 3)
val numbers = filterByType<Int>(mixed)    // [1, 2, 3]
val strings = filterByType<String>(mixed) // [text, more]
```

> Use reified type parameters when you need to:
> - Check types at runtime
> - Create instances of generic types
> - Access type information in inline functions

---
## Practice

Complete the function that creates an instance of a type:

```kotlin
inline fun <??? T> createInstance(): T {
    return T::class.???()
}
```

- `reified`
- `createInstance`
- `inline`
- `new`

---
## Revision

Reified type parameters:

???

- `Allow type checks at runtime in inline functions`
- `Work with any function`
- `Improve performance`
- `Are always available` 