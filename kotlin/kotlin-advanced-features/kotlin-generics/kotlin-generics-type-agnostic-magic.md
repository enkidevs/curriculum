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

# Generics: Type-Agnostic Magic ✨

---
## Content

Generics in Kotlin allow you to write flexible, reusable code that works with different types while maintaining type safety.

Think of generics like a container that can hold any type of item you specify:

```kotlin
// A simple generic box that can hold any type
class Box<T>(var item: T) {
    fun getItem(): T = item
    fun setItem(newItem: T) {
        item = newItem
    }
}

// Usage examples:
val stringBox = Box("Hello")     // Box<String>
val numberBox = Box(42)          // Box<Int>
val doubleBox = Box(3.14)        // Box<Double>
```

The `T` is a type parameter that acts as a placeholder. When you create a `Box`, you specify the actual type you want to use, and Kotlin ensures type safety throughout your code.

```kotlin
class Box<T>(var item: T)
```

The code above creates a `Box` class that can hold any type of item where `T` is the placeholder for the type.

This lets us create a `Box` for any type, like `String`, `Int`, or even a custom class.
---

## Practice

Complete the generic class definition that can store and retrieve any type of
value:

```kotlin
class Storage<???>(private val value: ???) {
    fun getValue(): ??? = value
}
```

A) T, T, T 
B) Any, Any, Any 
C) T, Any, T 
D) Any, T, Any

???

- `A`
- `B`
- `C`
- `D`

---

## Revision

What will be the inferred type of `box` in the following code?

```kotlin
class Box<T>(var item: T) {}
val box = Box(123)
```

A) Box<Int> 
B) Box<Number> 
C) Box<Any> 
D) Box<String>

???

- `A`
- `B`
- `C`
- `D`
