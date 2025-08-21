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

# Generics Basics

---
## Content

Generics allow you to write code that can work with any type while maintaining type safety:

```kotlin
// Generic class that can hold any type
class Box<T>(var content: T) {
    fun get(): T = content
    fun set(value: T) { content = value }
}

// Usage
val stringBox = Box("Hello")          // Box<String>
val numberBox = Box(123)              // Box<Int>
val doubleBox = Box(3.14)             // Box<Double>

// Type is enforced
stringBox.set("World")                // OK
// stringBox.set(123)                 // Won't compile - type mismatch
```

Generic interfaces:
```kotlin
interface Repository<T> {
    fun save(item: T)
    fun getById(id: Int): T
}

// Implementation for a specific type
class UserRepository : Repository<User> {
    override fun save(item: User) { /* ... */ }
    override fun getById(id: Int): User { /* ... */ }
}
```

Multiple type parameters:
```kotlin
class Pair<A, B>(val first: A, val second: B) {
    override fun toString() = "($first, $second)"
}

val coordinates = Pair(10, 20)        // Pair<Int, Int>
val entry = Pair("name", true)        // Pair<String, Boolean>
```

> 💡 Use generics when you want to:
> - Write reusable code for different types
> - Maintain type safety
> - Avoid code duplication

---
## Practice

Complete the generic class definition:

```kotlin
class Stack<???> {
    private val items = mutableListOf<???>()
    
    fun push(item: ???) {
        items.add(item)
    }
    
    fun pop(): ??? = items.removeAt(items.lastIndex)
}
```

- `T`
- `T`
- `T`
- `T`
- `Any`
- `Object`
- `Generic`

---
## Revision

What's the advantage of using generics over using `Any`?

???

- `Type safety at compile time`
- `Better performance`
- `Smaller code size`
- `Runtime type checking` 